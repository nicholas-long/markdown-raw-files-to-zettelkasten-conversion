# bash scripting query nmap ports and service description definitions
~/kb/awk-scripting/nmap-ports.sh
```bash
#!/bin/bash
# query nmap ports and service description definitions

awk '
BEGIN { OFS = "\t" }
/^#/ { next }
$1 == "unknown" { next }
{
  split($2,arr,"/")
  port=arr[1]
  proto=arr[2]
  print port, proto, $1
}
' /usr/share/nmap/nmap-services
```

~/kb/awk-scripting/nmap-ports.sh
` zet/20221003151416/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
