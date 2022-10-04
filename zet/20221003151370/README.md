# bash scripting get library dependency versions from composer.lock json file
~/kb/hacking/tricks/get-versions-from-composer-lock-json.sh
```bash
#!/bin/bash

# get library dependency versions from composer.lock json file
cat composer.lock | jq -r '.packages[] | .name,.version' | paste - -
```

~/kb/hacking/tricks/get-versions-from-composer-lock-json.sh
# Related

- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:

    #assorted #bash #script
