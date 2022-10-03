## get bash lines from kb snippets
~/kb/bash-scripting/get-bash-lines-from-kb-snippets.sh
```bash
#!/bin/bash

# get bash lines from kb snippets
grep -A 1 -h -R '^```bash' . | grep -v '^```\|^--'
```

~/kb/bash-scripting/get-bash-lines-from-kb-snippets.sh
