## read files quickly using smb shares
mount local fileshare to read administrator's files.
authentication is different for localhost.
```powershell
net use Z: \\127.0.0.1\c$
```
