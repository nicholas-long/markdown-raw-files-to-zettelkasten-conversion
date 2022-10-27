# jq pipe and filter objects syntax
filter data using pipes and select within jq command
```bash
cat users.json | jq '.data[].Properties | select ( .enabled == true ) | .name'
```

` zet/20221003151287/README.md `

# Related

- [20221003151288](/zet/20221003151288/README.md) jq pipe syntax
- [20221014190221](/zet/20221014190221/README.md) kb file named kb/data-engineering-pipelines/jq-command-reference.md
- [20221003151289](/zet/20221003151289/README.md) jq
- ~/kb/data-engineering-pipelines/jq-command-reference.md

Tags:

    #command #jq #data #pipelines
