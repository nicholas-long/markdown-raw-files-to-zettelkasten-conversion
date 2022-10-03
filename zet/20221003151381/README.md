# bash scripting get random hex unique ID bash
~/kb/bash-scripting/get-random-unique-id.sh
```bash
#!/bin/bash
# get random hex unique ID bash
cat /dev/urandom | head -c 6 | xxd -p
```

~/kb/bash-scripting/get-random-unique-id.sh
# References
- [20221003151424](/zet/20221003151424/) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted

