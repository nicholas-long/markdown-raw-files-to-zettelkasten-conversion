# bash scripting update all the git repos in home directory and prompt with lazygit
~/kb/bash-scripting/update-all-git-repos.sh
```bash
#!/bin/bash

# update all the git repos in home directory and prompt with lazygit

~/kb/bash-scripting/enum-git-repos-in-directory.sh $HOME |\
  awk -F / 'NF == 4 {print}' |\
  while read dir; do
    cd $dir
    diffcount=$(git status --porcelain | wc -l)
    [ $diffcount -ne 0 ] && lazygit
  done
```

~/kb/bash-scripting/update-all-git-repos.sh
` zet/20221003151400/README.md `

# Related

- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas

- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
