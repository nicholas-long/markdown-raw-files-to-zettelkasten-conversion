# bash scripting get library dependency versions from composer.lock json file
~/kb/hacking/tricks/get-versions-from-composer-lock-json.sh
```bash
#!/bin/bash

# get library dependency versions from composer.lock json file
cat composer.lock | jq -r '.packages[] | .name,.version' | paste - -
```

~/kb/hacking/tricks/get-versions-from-composer-lock-json.sh
` zet/20221003151370/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script #trick #version #json #enumeration
