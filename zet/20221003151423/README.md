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
# Related

- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:

    #assorted #bash #script
