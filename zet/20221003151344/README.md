# awk bash scripting split into files by column value

- partition into files based on column
- analyzing CSV trade data : split into files for symbols
- check if column is nonempty
- put row into file based on column value
```bash
cat trades-june1.csv | awk -F, 'length($4) { print > $4 ".csv" }'
```

` zet/20221003151344/README.md `

# Related

- [20221003151350](/zet/20221003151350/README.md) awk and bash scripting

- [20221014190117](/zet/20221014190117/README.md) kb file named kb/awk-scripting/bash-awk-quick-commands.md
- ~/kb/awk-scripting/bash-awk-quick-commands.md

Tags:

    #command #awk-scripting #bash 
