# awk and bash scripting partition split into files by column value put row into file based on column value
```bash
cat trades-june1.csv| awk -F, 'length($4) { print > $4 ".csv" }'
```

# References
- [20221003151347](/zet/20221003151347/README.md) awk and bash scripting partition split into files by column value
- ~/kb/awk-scripting/bash-awk-quick-commands.md

Tags:
    #assorted
