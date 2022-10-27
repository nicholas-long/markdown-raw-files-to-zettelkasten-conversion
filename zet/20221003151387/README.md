# bash scripting generate ISO format dates wordlists for the last few years
~/kb/bash-scripting/generate-dates.sh
```bash
#!/bin/bash

# generate ISO format dates wordlists for the last few years

for d in $(seq 2000);
do
  date --date "$d days ago" '+%Y-%m-%d'
done | awk ' BEGIN { FS="-" }
{ print > "days-" $1 } '
```

~/kb/bash-scripting/generate-dates.sh
` zet/20221003151387/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script #date #generate
