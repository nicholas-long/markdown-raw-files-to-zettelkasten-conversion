# bash scripting remove git from directory name

~/kb/bash-scripting/enum-git-repos-in-directory.sh
```bash
#!/bin/bash

# find all git repositories in a directory
# remove git from directory name
find "$1" -name .git -type d | awk 'BEGIN {FS = OFS = "/" } { NF--;print }'
```

~/kb/bash-scripting/enum-git-repos-in-directory.sh

` zet/20221003151420/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md
- [20221003151421](/zet/20221003151421/README.md) bash scripting find all git repositories in a directory

Tags:

    #bash #script 
