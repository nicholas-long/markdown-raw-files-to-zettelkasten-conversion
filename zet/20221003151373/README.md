# bash scripting sort words by length
~/kb/bash-scripting/sort-words-by-length.sh
```bash
#!/bin/bash

# sort words by length
awk '{print length(), $0}' filters.lst | sort -n | awk '{print $2}'
```

~/kb/bash-scripting/sort-words-by-length.sh
` zet/20221003151373/README.md `

# Related

- [20221012094712](/zet/20221012094712/README.md) linux sort issues with locale
- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
