# bash scripting get the date of the last commit to modify a file as epoch timestamp and iso date

~/kb/bash-scripting/git-file-modification-date.sh
```bash
#!/bin/bash
# get the date of the last commit to modify a file as epoch timestamp and iso date
while [[ $# -gt 0 ]]; do
  export filename=$1
  git log --date=unix -- "$1" | awk '
  BEGIN { OFS = "\t" }
  /^Date/ {
    epoch = $2
    "date --date @" epoch " --iso" | getline isodate
    print epoch, isodate, ENVIRON["filename"]
    exit 0
  }'
  shift
done
```

~/kb/bash-scripting/git-file-modification-date.sh
` zet/20221003151371/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221012144502](/zet/20221012144502/README.md) track modification dates
- [20221006054727](/zet/20221006054727/README.md) idea about zettels, commits, and scripts
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
