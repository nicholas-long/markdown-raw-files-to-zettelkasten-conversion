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

` zet/20221003150846/README.md `

# Related

- [20221014185834](/zet/20221014185834/README.md) kb file named kb/hacking/commands/gobuster.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150847](/zet/20221003150847/README.md) gobuster
- ~/kb/hacking/commands/gobuster.md

Tags:

    #command #hacking #gobuster 
