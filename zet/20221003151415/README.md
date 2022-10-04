# bash scripting print the md5 hashes of all lines in a wordlist file
~/kb/hacking/scripts/print-all-md5s.sh
```bash
#!/bin/bash

# print the md5 hashes of all lines in a wordlist file
function hashing {
  while read line; do
    echo -n "$line" | md5sum | awk "{print \$1, \"$line\"}"
  done
}
cat $1 | hashing
```

~/kb/hacking/scripts/print-all-md5s.sh
# Related

- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:

    #bash #script 
