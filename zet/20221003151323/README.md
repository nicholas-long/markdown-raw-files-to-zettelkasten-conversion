# ASCII text-based TSV / CSV file database join tables
both files must be sorted on join key
```bash
join -1 1 -2 3 <(sort data/completed_scanned_urls) <(sort -k 3 master-url-list.tsv)
```

# References
- [20221003151324](/zet/20221003151324/README.md) ASCII text-based TSV / CSV file database
- ~/kb/bash-scripting/text-database-operations.md

Tags:
    #assorted
