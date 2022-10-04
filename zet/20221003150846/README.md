# gobuster dirbusting
```bash
gobuster dir -e -t 50 -u $URL -w /usr/share/seclists/Discovery/Web-Content/directory-list-2.3-big.txt
gobuster dir -e -t 50 -u $URL -w /usr/share/wordlists/dirb/big.txt
gobuster dir -e -t 50 -u $URL -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt
gobuster dir -e -t 50 -u $URL -w /usr/share/wordlists/dirbuster/directory-list-lowercase-2.3-medium.txt
gobuster dir -e -t 50 -u $URL -w /usr/share/seclists/Discovery/Web-Content/raft-large-directories.txt
gobuster dir -e -t 50 -u $URL -w /usr/share/seclists/Discovery/Web-Content/raft-medium-directories.txt

gobuster dir -e -t 50 -u $URL -w /usr/share/seclists/Discovery/Web-Content/Common-DB-Backups.txt

gobuster dir -e -t 50 -u $URL -w ~/kb/wordlists/custom.dirbusting
gobuster dir -e -t 50 -u $URL -w /usr/share/seclists/Discovery/Web-Content/common.txt
```

# References
- [20221003150847](/zet/20221003150847/README.md) gobuster
- ~/kb/hacking/commands/gobuster.md

Tags:
    #assorted #command #hacking #gobuster
