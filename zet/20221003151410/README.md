# bash scripting get raw HTTP request data from burp saved request
~/kb/hacking/scripts/get-burp-http-saved-request.sh
```bash
#!/bin/bash
# get raw HTTP request data from burp saved request
cat $1 | go run github.com/ericchiang/xpup@latest //request | base64 -d
```

~/kb/hacking/scripts/get-burp-http-saved-request.sh
` zet/20221003151410/README.md `

# Related

- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
