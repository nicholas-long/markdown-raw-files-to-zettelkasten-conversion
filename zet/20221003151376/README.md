# bash scripting get argument value or default
~/kb/bash-scripting/find-largest-files.sh
```bash
#!/bin/bash
# find the largest N files
# get argument value or default
find . -type f -ls 2>/dev/null |\
  awk '{print $7, $0}' |\
  sort -nr |\
  head -n ${1:-10} # default 10
```

~/kb/bash-scripting/find-largest-files.sh
` zet/20221003151376/README.md `

# Related

- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
