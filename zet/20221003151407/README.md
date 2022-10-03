# bash scripting pull all the git repos in home directory
~/kb/bash-scripting/pull-all-git-repos.sh
```bash
#!/bin/bash

# pull all the git repos in home directory

~/kb/bash-scripting/enum-git-repos-in-directory.sh $HOME |\
  awk -F / 'NF == 4 {print}' |\
  while read dir; do
    cd $dir
    echo "pulling $dir"
    git pull
  done
```

~/kb/bash-scripting/pull-all-git-repos.sh
# References
- [20221003151424](/zet/20221003151424/) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted

