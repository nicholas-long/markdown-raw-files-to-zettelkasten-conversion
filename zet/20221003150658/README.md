# wfuzz dirbusting
```bash
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/raft-large-directories.txt --hc 404 http://$IP/FUZZ/
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/raft-large-files.txt --hc 404 http://$IP/FUZZ
wfuzz -c -w ~/kb/wordlists/custom.dirbusting --hc 404 http://$IP/FUZZ
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/common.txt --hc 404 http://$IP/FUZZ/
```

` zet/20221003150658/README.md `

# Related

- [20221014185935](/zet/20221014185935/README.md) kb file named kb/hacking/commands/wfuzz-commands.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150659](/zet/20221003150659/README.md) wfuzz
- ~/kb/hacking/commands/wfuzz-commands.md
- [20221003151190](/zet/20221003151190/README.md) HTTP BUSTING directory busting to try list
- [20221003151192](/zet/20221003151192/README.md) HTTP to try list

Tags:

    #command #hacking #wfuzz 
