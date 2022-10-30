# get all root process IDs
```bash
ps -ef | awk '/^root/ && !/\]$/ { print $2 }'
```

` zet/20221003150892/README.md `

# Related

- [20221003151299](/zet/20221003151299/README.md) bash tricks
- [20221003150920](/zet/20221003150920/README.md) linux enumeration quick commands
- [20221003150917](/zet/20221003150917/README.md) linux enumeration quick commands process tree ps

Tags:

    #command #hacking
