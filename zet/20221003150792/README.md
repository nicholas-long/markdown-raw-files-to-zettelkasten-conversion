# generate cewl wordlist from file plaintext with grep
use awk to print only unique lines
```bash
grep -Eo '\w+' $FILE
grep -Eo '\w+' $FILE | awk '!(seen[$0]++)'
```

` zet/20221003150792/README.md `

# Related

- [20221014185855](/zet/20221014185855/README.md) kb file named kb/hacking/commands/generate-cewl-wordlist.md
- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
- [20221003150794](/zet/20221003150794/README.md) generate cewl wordlist from file
- ~/kb/hacking/commands/generate-cewl-wordlist.md

Tags:

    #command #hacking #generate 
