# bash scripting get bash lines from kb snippets
~/kb/bash-scripting/get-bash-lines-from-kb-snippets.sh
```bash
#!/bin/bash

# get bash lines from kb snippets
grep -A 1 -h -R '^```bash' . | grep -v '^```\|^--'
```

~/kb/bash-scripting/get-bash-lines-from-kb-snippets.sh
` zet/20221003151364/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
