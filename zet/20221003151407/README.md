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
` zet/20221003151407/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script #git #workflow
