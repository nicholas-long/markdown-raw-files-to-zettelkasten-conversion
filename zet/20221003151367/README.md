# bash scripting list public github repositories for user
~/kb/bash-scripting/list-github-repos.sh
```bash
#!/bin/bash

u="$1"
if [ -z "$u" ]; then
  u="nicholas-long"
fi

# list public github repositories for user
curl "https://api.github.com/users/$u/repos?visibility=private" | jq -r '.[].html_url'
```

~/kb/bash-scripting/list-github-repos.sh
# References
- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted
