# PureFTP Create setupftp.sh Execute The Script

```
#!/bin/bash
groupadd ftpgroup
useradd -g ftpgroup -d /dev/null -s /etc ftpuser
pure-pw useradd myftpuser -u ftpuser -d /ftphome
pure-pw mkdb
cd /etc/pure-ftpd/auth/
sudo ln -s /etc/pure-ftpd/conf/PureDB /etc/pure-ftpd/auth/40PureDBexit
mkdir -p /ftphome
chown -R ftpuser:ftpgroup /ftphome/
/etc/init.d/pure-ftpd restart
```

./setupftp.sh

# Related
- [20221003150623](/zet/20221003150623/README.md) PureFTP
- ~/kb/hacking/commands/pureftp-commands.md

Tags:
    #assorted #command #hacking #pureftp
