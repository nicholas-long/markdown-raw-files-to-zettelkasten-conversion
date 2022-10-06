# get all root process IDs
```bash
ps -ef | awk '/^root/ && !/\]$/ { print $2 }'
```

` zet/20221003150892/README.md `

# Related


Tags:

    
