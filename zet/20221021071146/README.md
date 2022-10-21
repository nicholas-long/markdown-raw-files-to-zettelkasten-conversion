# delete things marked as #DEL periodically

- concept of `delete things marked as #DEL periodically`

```
./graphquery @DEL | awk '/^[0-9]+$/ {system("rm -rf zet/" $0)}'
```

` zet/20221021071146/README.md `

# Related

- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221008042814](/zet/20221008042814/README.md) WIP

Tags:

    #workflow #cleanup
