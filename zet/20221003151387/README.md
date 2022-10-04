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
# Related

- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:

    #assorted #bash #script
