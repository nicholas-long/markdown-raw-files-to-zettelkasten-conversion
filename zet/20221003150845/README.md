# gobuster scan files and discover backups
exclude error pages with `--exclude-length 321` instead of by status code
```bash
gobuster dir -t 50 -d -e -u $URL -w /usr/share/seclists/Discovery/Web-Content/raft-small-words.txt -x php,txt,html,cgi,sh,bak,aspx
gobuster dir -t 50 -d -e -u $URL -w /usr/share/seclists/Discovery/Web-Content/raft-small-words-lowercase.txt -x php,txt,html,aspx,asp
gobuster dir -t 50 -d -e -u $URL -w /usr/share/seclists/Discovery/Web-Content/raft-large-files.txt
gobuster dir -e -t 50 -x php,txt,html -d -u $URL -w /usr/share/seclists/Discovery/Web-Content/raft-small-words.txt
gobuster dir -e -t 50 -x php,txt,html -d -u $URL -w /usr/share/seclists/Discovery/Web-Content/raft-small-words-lowercase.txt
gobuster dir -e -t 50 -x php,txt,html -d -u $URL -w cewl_wordlist
```

# References
- [20221003150847](/zet/20221003150847/README.md) gobuster
- ~/kb/hacking/commands/gobuster.md

Tags:
    #assorted
