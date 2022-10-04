# bash scripting loop over bash array
~/kb/bash-scripting/loop-array-pull-git-repositories.sh
```bash
#!/bin/bash

function updatepull {
  cd "$1" && git pull
}

# define bash array
places=(~/kb ~/pen-test-environ)

# loop over bash array
for p in ${places[@]}; do
  echo Pulling $p
  updatepull $p
done
```

~/kb/bash-scripting/loop-array-pull-git-repositories.sh
# References
- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted
