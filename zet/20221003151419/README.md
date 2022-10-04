# bash scripting return the most recently updated ubuntu distro
~/kb/bash-scripting/get-current-ubuntu-distro.sh
```bash
#!/bin/bash

# return the most recently updated ubuntu distro
curl http://archive.ubuntu.com/ubuntu/dists/ 2>/dev/null | \
  awk 'BEGIN { FS="<td[^>]*>"; OFS="\t" } /a href/ && /folder.gif/ {print $3, $4}' | \
  sed -e 's/.*a href="//' -e 's/<[^>]*>//g' -e 's/\/".*\t/\t/' | \
  awk 'BEGIN {OFS=FS="\t"} $1 !~ /-/ { print $2, $1}' | \
  sort | \
  tail -n 1 | \
  awk 'BEGIN { FS="\t"} { print $2}'
```

~/kb/bash-scripting/get-current-ubuntu-distro.sh
# References
- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted #bash #script
