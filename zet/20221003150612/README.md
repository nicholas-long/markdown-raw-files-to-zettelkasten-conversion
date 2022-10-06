# smbclient shell recursive get all files
```
recurse on
prompt off
mget *
```
```bash
smbclient //$IP/share -U username%password -c "prompt OFF;recurse ON;mget *"
```

` zet/20221003150612/README.md `

# Related

- [20221003150614](/zet/20221003150614/README.md) smbclient shell
- ~/kb/hacking/commands/smbclient-commands.md

Tags:

    #command #hacking #smbclient 
