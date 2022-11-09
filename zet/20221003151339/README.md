# enumerate all python imports; chain 2 awk scripts with a filter
```bash
find / -name '*.py' -exec grep "" /dev/null {} \; 2>/dev/null | awk -F: '$2 ~ /import/ {print $1 "\t" $2}' | awk '{print $1,$3}'
```

` zet/20221003151339/README.md `

# Related

- [20221008181005](/zet/20221008181005/README.md) getting github data about vulnerable hashes
- [20221003151367](/zet/20221003151367/README.md) bash scripting list public github repositories for user
- [20221003151299](/zet/20221003151299/README.md) bash tricks
- [20221003150946](/zet/20221003150946/README.md) python hub

Tags:

    #command #bash #python #file #trick
