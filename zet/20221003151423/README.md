# bash scripting urlencode and base64 encode lines individually

~/kb/bash-scripting/urlencode-base64-every-line.sh
```bash
#!/bin/bash
# urlencode and base64 encode lines individually
awk ' {
  printf("%s", $0) | "base64"
  close("base64")
} ' "$1" | sed 's/=/%3D/g'
```

~/kb/bash-scripting/urlencode-base64-every-line.sh
` zet/20221003151423/README.md `

# Related

- [20221018133841](/zet/20221018133841/README.md) base64 concept
- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script #trick #base64
