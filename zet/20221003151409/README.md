# bash scripting get the current user's github colon separated credentials
~/kb/bash-scripting/get-github-credentials.sh
```bash
#!/bin/bash

# get the current user's github colon separated credentials
cat $HOME/.git-credentials | awk -F '[/@]' '/github/ {print $3}' | sed s/%40/@/g
```

~/kb/bash-scripting/get-github-credentials.sh
# Related

- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:

    #bash #script 
