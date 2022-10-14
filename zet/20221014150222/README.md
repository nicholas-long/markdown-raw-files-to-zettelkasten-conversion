# list of all kb files and references in imported documents

- concept of `make a list of all kb files`
- add them as cards
- link them to existing cards which mention their file
- stored in `zet/20221014150222/list_of_kb_files`
- import into zettelkasten
- list of references is at `zet/20221014150222/kb_references`

```bash
find ~/kb -type f -name '*.md'
echo list is at zet/20221014150222/list_of_kb_files

# getting references to files
grep -R -f zet/20221014150222/list_of_kb_files zet/*/README.md

echo list of references is at zet/20221014150222/kb_references

```

` zet/20221014150222/README.md `

# Related

- [20221007182026](/zet/20221007182026/README.md) scripts related to zettelkasten conversion
- [20221014062642](/zet/20221014062642/README.md) organize OSCP related notes
- [20221009095853](/zet/20221009095853/README.md) finished
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221009172351](/zet/20221009172351/README.md) markdown file format
- [20221003151443](/zet/20221003151443/README.md) kb
- [20221012212839](/zet/20221012212839/README.md) check all kb markdown files were migrated succesfully

Tags:

    #list
