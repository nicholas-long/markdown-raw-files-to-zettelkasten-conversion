# implement returning paths or tables in graph query language

- concept of `implement paths or tables`
- procedure
  - individual operations
    - input: individual IDs
    - output: ordered pairs, input ID -> ... -> results
  - joining results to working set involves
    - matching the final column of rows in working set to the first column of result
    - dropping the first column from the result
    - printing it concatenated after the matching rows
  - could have many duplicates by getting all paths?
- what if a file contains paths?
  - beginning column is starting node to join with, final column is result, insert the whole table?
  - join just like other individual operation

```
```

` zet/20221023085822/README.md `

# Related

- [20221013221136](/zet/20221013221136/README.md) implement a graph query language
- [20221008042814](/zet/20221008042814/README.md) WIP

Tags:

    #idea
