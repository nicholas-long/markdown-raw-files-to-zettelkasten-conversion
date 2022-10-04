# bash scripting decorate and colorize a passwd file piped from stdin
~/kb/bash-scripting/decorate-passwd-file.sh
```bash
#!/bin/bash
# decorate and colorize a passwd file piped from stdin
~/kb/bash-scripting/colorize.sh -y '^.*sh$' -c '^[^:]+' -r root -g '[^:/]+$' -b 'false|nologin'
```

~/kb/bash-scripting/decorate-passwd-file.sh
# Related
- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted #bash #script
