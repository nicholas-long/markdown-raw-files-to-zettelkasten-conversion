# ASCII text-based TSV / CSV file database join tables
both files must be sorted on join key
```bash
join -1 1 -2 3 <(sort data/completed_scanned_urls) <(sort -k 3 master-url-list.tsv)
```

` zet/20221003151323/README.md `

# Related

- [20221014190244](/zet/20221014190244/README.md) kb file named kb/bash-scripting/text-database-operations.md
- [20221003151324](/zet/20221003151324/README.md) ASCII text-based TSV / CSV file database
- ~/kb/bash-scripting/text-database-operations.md

Tags:

    #text #bash #scripting #command #data #database #file #trick
