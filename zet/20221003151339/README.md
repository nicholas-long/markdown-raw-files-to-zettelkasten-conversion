# enumerate all python imports; chain 2 awk scripts with a filter
```bash
find / -name '*.py' -exec grep "" /dev/null {} \; 2>/dev/null | awk -F: '$2 ~ /import/ {print $1 "\t" $2}' | awk '{print $1,$3}'
```

` zet/20221003151339/README.md `

# Related

- [20221007185940](/zet/20221007185940/README.md) unsorted nodes

Tags:

    
