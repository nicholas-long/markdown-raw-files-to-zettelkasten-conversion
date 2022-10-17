# mysql mariadb exploit GRANT OPTION to grant file write permissions to self
must have `GRANT OPTION` permission
```SQL
GRANT FILE ON *.* TO 'uname'@'localhost' with grant option;
grant all privileges on dbname.* to 'yourusername'@'%' with grant option;
```

` zet/20221003151232/README.md `

# Related

- [20221003151204](/zet/20221003151204/README.md) got access to databases - general SQL

- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221014185545](/zet/20221014185545/README.md) kb file named kb/hacking/tricks/mysql-tricks.md
- [20221003151236](/zet/20221003151236/README.md) mysql mariadb
- ~/kb/hacking/tricks/mysql-tricks.md

Tags:

    #hacking #trick #mysql 
