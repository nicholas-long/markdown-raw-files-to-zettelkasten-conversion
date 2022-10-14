# bash scripting get the current user's github api key
~/kb/bash-scripting/get-github-api-key.sh
```bash
#!/bin/bash

# get the current user's github api key
cat $HOME/.git-credentials | awk -F '[/:@]' '/github/ {print $5}'
```

~/kb/bash-scripting/get-github-api-key.sh
` zet/20221003151395/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
