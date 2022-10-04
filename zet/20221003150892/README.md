# get all root process IDs
```bash
ps -ef | awk '/^root/ && !/\]$/ { print $2 }'
```

# References

Tags:
    #assorted
