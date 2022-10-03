## partition split into files by column value
### analyzing CSV trade data : split into files for symbols
### check if column is nonempty
### put row into file based on column value
```bash
cat trades-june1.csv| awk -F, 'length($4) { print > $4 ".csv" }'
```
