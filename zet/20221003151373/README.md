# bash scripting sort words by length
~/kb/bash-scripting/sort-words-by-length.sh
```bash
#!/bin/bash

# sort words by length
awk '{print length(), $0}' filters.lst | sort -n | awk '{print $2}'
```

~/kb/bash-scripting/sort-words-by-length.sh
# References
- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted
