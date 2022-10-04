# impacket quick smb server
The share name is TMP
```bash
impacket-smbserver -smb2support -username user -password password123 TMP $(pwd)
impacket-smbserver -smb2support TMP $(pwd)
```

# Related
- [20221003150600](/zet/20221003150600/README.md) impacket
- ~/kb/hacking/commands/impacket-commands.md

Tags:
    #assorted #command #hacking #impacket
