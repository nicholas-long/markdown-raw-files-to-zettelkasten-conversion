# bash scripting get the current user's github colon separated credentials
~/kb/bash-scripting/get-github-credentials.sh
```bash
#!/bin/bash

# get the current user's github colon separated credentials
cat $HOME/.git-credentials | awk -F '[/@]' '/github/ {print $3}' | sed s/%40/@/g
```

~/kb/bash-scripting/get-github-credentials.sh
` zet/20221003151409/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
