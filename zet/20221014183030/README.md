# create cards for kb files

- concept of `create cards for kb files`
- how to add a reference
```
./zc addref -t $id $newid
```
- kb files stored in `zet/20221014150222/list_of_kb_files`
- making a new card with a title and a reference id
```bash
newid=$(./zc new -t "$title" -r "$id" | awk '/created zet ID/ { print $NF }')
```

` zet/20221014183030/README.md `

# Related

- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub
- 
- [20221014150222](/zet/20221014150222/README.md) list of all kb files and references in imported documents
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221012212839](/zet/20221012212839/README.md) check all kb markdown files were migrated succesfully

Tags:

    #todo #notes
