# jq filter objects syntax
filter data using pipes and select within jq command
```bash
cat users.json | jq '.data[].Properties | select ( .enabled == true ) | .name'
```

# References
- [20221003151289](/zet/20221003151289/README.md) jq
- ~/kb/data-engineering-pipelines/jq-command-reference.md

Tags:
    #assorted #command
