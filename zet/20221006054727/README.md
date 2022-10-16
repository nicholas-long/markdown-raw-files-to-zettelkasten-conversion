# idea about zettels, commits, and scripts

- add summaries of previous day in history's git commits as zettels
- connect them to relevant files by searhcing for `- ~/kb/` links
- the idea of time should add some context to random zettels and will add structure to the graph
- the bash script about the last modified date is useful
- most recent commit change: `zet/20221006054727/filemodoutput`
- commits, timestamps, and files: `zet/20221006054727/commitdetails`
- script `zet/20221006054727/gitcommitfilelog`

```bash

┌──(kali㉿kali)-[~/kb]
└─$ find . -type f -name '*.md' | xargs /home/kali/kb/bash-scripting/git-file-modification-date.sh | tee filemodoutput

cp ~/kb/filemodoutput zet/20221006054727/

# script
zet/20221006054727/gitcommitfilelog

zet/20221006054727/gitcommitfilelog | tee zet/20221006054727/commitdetails
zet/20221006054727/commitdetails

# orgainizing commit details into files
mkdir -p zet/20221006054727/days

awk '
{
  outf = "zet/20221006054727/days/" $2
  print $1, $3, $4 > outf
}
' <(sort -n zet/20221006054727/commitdetails)

rm -rf zet/20221006054727/days

# command to log the commit we want ( run from kb as working dir )
#git log 8a5794b784f77e510be4c44be78b0c0699ad6326 -n 1

touch zet/20221006054727/getcommitawk
chmod +x zet/20221006054727/getcommitawk

zet/20221006054727/getcommitawk zet/20221006054727/days/2022-07-10

zet/20221006054727/getcommitawk zet/20221006054727/days/2022-09-27

for n in $(ls zet/20221006054727/days)
do
  zet/20221006054727/getcommitawk zet/20221006054727/days/$n > zet/20221006054727/days/$n.log
done

ln -s zet/20221006054727/days gitdays
```

` zet/20221006054727/README.md `

# Related

- [20221016202237](/zet/20221016202237/README.md) script to insert snippets into cards from file content
- [20221012144502](/zet/20221012144502/README.md) track modification dates
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221008182309](/zet/20221008182309/README.md) learning git internals
- [20221003150798](/zet/20221003150798/README.md) git
- [20221006084204](/zet/20221006084204/README.md) future enhancements to zet cmd
- [20221010183037](/zet/20221010183037/README.md) i wonder what if let's try
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
