# idea about zettels, commits, and scripts

- add summaries of previous day in history's git commits as zettels
- connect them to relevant files by searhcing for `- ~/kb/` links
- the idea of time should add some context to random zettels and will add structure to the graph
- the bash script about the last modified date is useful
- most recent commit change: `zet/20221006054727/filemodoutput`
- commits, timestamps, and files: `zet/20221006054727/commitdetails`
- script `zet/20221006054727/gitcommitfilelog`
- script to insert commit logs into cards `zet/20221006032546/insertsnippet`
  - param 1: snippet ID
  - param 2: file with which to replace the snippet contents
- list of kb files by zet id is stored at `zet/20221006054727/kb_files_ids`

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

cp kb_files_ids zet/20221006054727/

zet/20221006054727/kb_files_ids

mkdir -p zet/20221006054727/logs
mv zet/20221006054727/days/*.log zet/20221006054727/logs

```

- steps for final script:
- read kb file IDs to make associative array - arg 1 = zet/20221006054727/kb_files_ids
  - `id_for[$2] = $1`
- for each file d in zet/20221006054727/days
  - make new card, save id as `newid`
  - find files linked on the day by reading `zet/20221006054727/days/$d`
    - column 1 is timestamp - ignore? should be in order already
    ```
    1664303472 9e5cd9faf724a986a5970cb3f205124b6a017cdb ./auto-bash.md
    1664303835 392b434289bc08de9fdde5ccc97f74106075c3c0 ./hacking/commands/sqlmap-commands.md
    1664306276 1ebf86977dcdea05480ae79da2758f0febe7bd04 ./hacking/misc/assorted-information.md
    1664306276 1ebf86977dcdea05480ae79da2758f0febe7bd04 ./linux/capabilities.md
    1664311878 c68d027e137e97574b9e6a00ba691c997ca63211 ./hacking/commands/git.md
    ```
    - cross reference with kb file IDs
      - gsub column 3 `./` to `kb/`
      - lookup awk column 3 in `id_for[$3]`
    - add reference to this day's card
      - `./zc addref -t $newid $fileid`
  - add log info to snippet text for card: zet/20221006054727/logs/2022-09-27.log
    - assuming new card id is stored in newid
    - `zet/20221006032546/insertsnippet $newid zet/20221006054727/logs/$d.log`

```

for d in $(ls zet/20221006054727/days); do
  echo $d
done

d="2022-09-27"

export newid=$(./zc new -t "commits for day of $d" | awk '/created zet ID/ { print $NF }')
echo "i got the ID $newid"
awk '
ARGIND == 1 { id_for[$2] = $1 }
ARGIND == 2 {
  fn = $3
  gsub(/^\./,"kb", fn)
  if (fn in id_for) {
      command = "./zc addref -t " ENVIRON["newid"] " " id_for[fn]
      print command
      system(command)
  } else print "UNK ID", $3, fn
}
' zet/20221006054727/kb_files_ids zet/20221006054727/days/$d
zet/20221006032546/insertsnippet $newid zet/20221006054727/logs/$d.log
sed -i 's/#idea/#dayinhistory/' zet/$newid/README.md


for d in $(ls zet/20221006054727/days); do
  echo $d
  export newid=$(./zc new -t "commits for day of $d" | awk '/created zet ID/ { print $NF }')
  echo "i got the ID $newid"
  awk '
  ARGIND == 1 { id_for[$2] = $1 }
  ARGIND == 2 {
    fn = $3
    gsub(/^\./,"kb", fn)
    if (fn in id_for) {
        command = "./zc addref -t " ENVIRON["newid"] " " id_for[fn]
        print command
        system(command)
    } else print "UNK ID", $3, fn
  }
  ' zet/20221006054727/kb_files_ids zet/20221006054727/days/$d
  zet/20221006032546/insertsnippet $newid zet/20221006054727/logs/$d.log
  sed -i 's/#idea/#dayinhistory/' zet/$newid/README.md
done

chmod +x zet/20221006054727/historyscript

```

` zet/20221006054727/README.md `

# Related

- [20221014183030](/zet/20221014183030/README.md) create cards for kb files
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
