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
` zet/20221003151367/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151339](/zet/20221003151339/README.md) enumerate all python imports; chain 2 awk scripts with a filter
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
