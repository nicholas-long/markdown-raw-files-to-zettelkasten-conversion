# bash scripting get the current user's github api key
~/kb/bash-scripting/get-github-api-key.sh
```bash
#!/bin/bash

# get the current user's github api key
cat $HOME/.git-credentials | awk -F '[/:@]' '/github/ {print $5}'
```

~/kb/bash-scripting/get-github-api-key.sh
# References
- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted #bash #script
