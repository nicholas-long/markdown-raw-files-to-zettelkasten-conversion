# bash scripting find alphanumeric base64 using awk script
~/kb/bash-scripting/find-alphanum-base64.sh
```bash
#!/bin/bash
# find alphanumeric base64 using awk script
echo "$1" | ~/kb/awk-scripting/space-invader.awk | while read line; do
  echo -n "$line" | base64 -w0
  echo ""
done | grep '^[A-Za-z0-9]*$'
```

~/kb/bash-scripting/find-alphanum-base64.sh
` zet/20221003151399/README.md `

# Related

- [20221018133841](/zet/20221018133841/README.md) base64 concept
- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003150684](/zet/20221003150684/README.md) encode string as base64 url encoded
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
