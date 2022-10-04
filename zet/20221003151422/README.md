# bash scripting use awk to print only unique lines as a stream processor
~/kb/bash-scripting/awk-print-unique-lines.sh
```bash
# use awk to print only unique lines as a stream processor
awk '!seen[$0]++ { print }'
```

~/kb/bash-scripting/awk-print-unique-lines.sh
# References
- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted
