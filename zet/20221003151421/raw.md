## find all git repositories in a directory
## remove git from directory name
~/kb/bash-scripting/enum-git-repos-in-directory.sh
```bash
#!/bin/bash

# find all git repositories in a directory
# remove git from directory name
find "$1" -name .git -type d | awk 'BEGIN {FS = OFS = "/" } { NF--;print }'
```

~/kb/bash-scripting/enum-git-repos-in-directory.sh
