# smbclient shell recursive get all files
```
recurse on
prompt off
mget *
```
```bash
smbclient //$IP/share -U username%password -c "prompt OFF;recurse ON;mget *"
```

# References
- [20221003150614](/zet/20221003150614/README.md) smbclient shell
- ~/kb/hacking/commands/smbclient-commands.md

Tags:
    #assorted #command
