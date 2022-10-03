## quick smb server
The share name is TMP
```bash
impacket-smbserver -smb2support -username user -password password123 TMP $(pwd)
impacket-smbserver -smb2support TMP $(pwd)
```

