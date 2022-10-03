# generate cewl wordlist from file plaintext with grep
use awk to print only unique lines
```bash
grep -Eo '\w+' $FILE
grep -Eo '\w+' $FILE | awk '!(seen[$0]++)'
```

# References
- [20221003150794](/zet/20221003150794/) generate cewl wordlist from file
- ~/kb/hacking/commands/generate-cewl-wordlist.md

Tags:
    #assorted

