# jq

- available in kali apt
- filter data using pipes and select within jq command using pipe syntax
  - example: bloodhound users.json file
  - [20221003151287](/zet/20221003151287/README.md) jq pipe and filter objects syntax
```bash
cat users.json | jq '.data[].Properties | select ( .enabled == true ) | .name'
```

` zet/20221003151289/README.md `

# Related

- [20221019143424](/zet/20221019143424/README.md) JSON concept
- [20221009014200](/zet/20221009014200/README.md) concept of a command
- [20221014190221](/zet/20221014190221/README.md) kb file named kb/data-engineering-pipelines/jq-command-reference.md
- [20221012153019](/zet/20221012153019/README.md) javascript
- [20221003151288](/zet/20221003151288/README.md) jq pipe syntax
- [20221003151287](/zet/20221003151287/README.md) jq pipe and filter objects syntax
- ~/kb/data-engineering-pipelines/jq-command-reference.md
- [20221008061334](/zet/20221008061334/README.md) concepts

Tags:

    #command #jq #data #pipelines #program
