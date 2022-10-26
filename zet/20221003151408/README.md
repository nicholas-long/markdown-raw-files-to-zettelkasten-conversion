# parse burpsuite saved request file and convert to python requests script for copying
~/kb/hacking/scripts/copy-burp-request-as-python-script.sh
```bash
#!/bin/bash

xpup="go run github.com/ericchiang/xpup@latest"
file="$1"
http_request=$(mktemp)

# parse burpsuite saved request file and convert to python requests script for copying
cat $file | $xpup '//request' | base64 -d > $http_request
dos2unix $http_request 2>/dev/null

url=$(cat $file | $xpup //url)
ct=$(awk '/^Content-Type/ { print $2 }' $http_request)
method=$(awk 'NR == 1 { print $1 }' $http_request)
getparams=$(echo $url | ~/kb/python/get-url-params.py)
http_headers=$(awk '
  BEGIN {
    FS = ": "
    OFS = "\t"
  }
  /^Cookie/ { next }
  /^Host/ { next }
  /^Content-Length/ { next }
  /^Connection/ { next }
  /^Upgrade-Insecure-Requests/ { next }
  /^Accept/ { next }
  /^Content-Type/ { next }
  NF == 2 { $1 = $1; print }
  /^$/ { exit 0 }
  ' $http_request | ~/kb/python/tsv-to-python-dict.py
)

cookies=$(awk '
/^Cookie/ {
  gsub(/;/,"")
  for (n = 2; n <= NF; n++)
    print $n
}
' $http_request | ~/kb/python/decode-cookies.py)

#--------------------------------------------------------------------------------

cat << HEADER
import requests

url = "$url"
cookies = $cookies

## optional
getparams = $getparams
headers = $http_headers

HEADER

if [ $method == "POST" ]; then
  if [ $ct == "application/x-www-form-urlencoded" ]; then
    postdata=$(~/kb/awk-scripting/get-http-post-content.awk $http_request | ~/kb/python/decode-post-params.py)

    cat << PYTHON
postdata = $postdata
r = requests.post(url, data=postdata, headers=headers, cookies=cookies)
PYTHON
  fi
elif [ $method == "GET" ]; then
    cat << PYTHON
r = requests.get(url, params=getparams, headers=headers, cookies=cookies)
PYTHON
fi

cat << FOOTER
print(r.text)
FOOTER

rm $http_request
```

~/kb/hacking/scripts/copy-burp-request-as-python-script.sh
` zet/20221003151408/README.md `

# Related

- [20221017084459](/zet/20221017084459/README.md) xpup xml parsing tool for scripting
- [20221003151193](/zet/20221003151193/README.md) HTTP
- [20221003151187](/zet/20221003151187/README.md) HTTP LFI or dir traversal
- [20221003151186](/zet/20221003151186/README.md) HTTP API and POST endpoints
- [20221003151184](/zet/20221003151184/README.md) HTTP found login form
- [20221015005745](/zet/20221015005745/README.md) python coding
- [20221003151363](/zet/20221003151363/README.md) python scripting
- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221014142356](/zet/20221014142356/README.md) concept of a neat trick or solution
- [20221008221822](/zet/20221008221822/README.md) www - the web
- [20221008211707](/zet/20221008211707/README.md) making cool stuff
- [20221008061845](/zet/20221008061845/README.md) workflow
- [20221003150946](/zet/20221003150946/README.md) python
- [20221003150310](/zet/20221003150310/README.md) burpsuite
- [20221003151299](/zet/20221003151299/README.md) bash tricks
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script #python #trick #web #hacking #scripting
