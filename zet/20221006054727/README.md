# idea about zettels, commits, and scripts

- add summaries of previous day in history's git commits as zettels
- connect them to relevant files by searhcing for `- ~/kb/` links
- the idea of time should add some context to random zettels and will add structure to the graph
- the bash script about the last modified date is useful
```bash
#!/bin/bash
while [[ $# -gt 0 ]]; do
  export filename=$1
  git log --date=unix -- "$1" | awk '
  BEGIN { OFS = "\t" }
  /^Date/ {
    epoch = $2
    "date --date @" epoch " --iso" | getline isodate
    print epoch, isodate, ENVIRON["filename"] # -> commit id
    exit 0 # -> dont
  }'
  shift
done
```

` zet/20221006054727/README.md `

# Related

- [20221008182309](/zet/20221008182309/README.md) learning git internals

- [20221003150798](/zet/20221003150798/README.md) git

- [20221006084204](/zet/20221006084204/README.md) future enhancements to zet cmd
- [20221010183037](/zet/20221010183037/README.md) i wonder what if let's try
- [20221010180141](/zet/20221010180141/README.md) reinforcement learning and motivation and candy rewards
- [20221010152742](/zet/20221010152742/README.md) how to jump right to a recent card on github
- [20221003151371](/zet/20221003151371/README.md) bash scripting get the date of the last commit to modify a file as epoch timestamp and iso date
- https://github.com/nicholas-long/kb/blob/main/bash-scripting/git-file-modification-date.sh
- [20221007182026](/zet/20221007182026/README.md) scripts related to zettelkasten conversion
- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221006142610](/zet/20221006142610/README.md) recommending zettelkasten note-taking method
- [20221009022138](/zet/20221009022138/README.md) parse text in zettelkasten with python scripts
- [20221006145626](/zet/20221006145626/README.md) why does rwxrob's zettelkasten have so few links?

Tags:

    #git #zettelkasten
