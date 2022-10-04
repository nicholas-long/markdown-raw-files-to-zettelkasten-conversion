# bypass UAC with administrators group read files quickly using smb shares
mount local fileshare to read administrator's files.
authentication is different for localhost.
```powershell
net use Z: \\127.0.0.1\c$
```

# Related
- [20221003151064](/zet/20221003151064/README.md) bypass UAC with administrators group
- ~/kb/hacking/windows/uacbypass/uac-bypass.md

Tags:
    #assorted #hacking #windows #uac
