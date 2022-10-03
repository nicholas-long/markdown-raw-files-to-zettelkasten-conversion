# feroxbuster dirbusting
```bash
export URL='http://$IP/'
feroxbuster --url $URL -w /usr/share/seclists/Discovery/Web-Content/common.txt
feroxbuster --url $URL -w /usr/share/seclists/Discovery/Web-Content/raft-medium-directories.txt

# custom list
feroxbuster --url $URL -w ~/kb/wordlists/custom.dirbusting
```

# References
- [20221003150739](/zet/20221003150739/) feroxbuster
- [20221003150737](/zet/20221003150737/) feroxbuster dirbusting common with arguments
- [20221003150736](/zet/20221003150736/) feroxbuster dirbusting big buster
- ~/kb/hacking/commands/feroxbuster-command.md

Tags:
    #assorted

