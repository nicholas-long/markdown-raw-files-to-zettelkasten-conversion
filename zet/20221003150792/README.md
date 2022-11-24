# generate cewl wordlist from file plaintext with grep
use awk to print only unique lines
```bash
grep -Eo '\w+' $FILE
grep -Eo '\w+' $FILE | awk '!(seen[$0]++)'
```

` zet/20221003150792/README.md `

# Related

- [20221003150795](/zet/20221003150795/README.md) generate cewl wordlist from website
- [20221003151329](/zet/20221003151329/README.md) bash scripting
- [20221003151299](/zet/20221003151299/README.md) bash tricks
- [20221003150793](/zet/20221003150793/README.md) generate cewl wordlist from file using temporary http server
- [20221014185855](/zet/20221014185855/README.md) kb file named kb/hacking/commands/generate-cewl-wordlist.md
- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
- ~/kb/hacking/commands/generate-cewl-wordlist.md
- [20221003150796](/zet/20221003150796/README.md) generate cewl wordlist
- [20221003150227](/zet/20221003150227/README.md) example grep patterns

Tags:

    #command #hacking #generate 
