# implement returning paths or tables in graph query language

- concept of `implement paths or tables`
- procedure
  - individual operations
    - input: individual IDs
      - get input IDs by taking all unique IDs in the last column of working set
    - output: could be ints if just filter, could be ordered pairs, input ID -> ... -> results
  - joining results to working set involves
    - matching the final column of rows in working set to the first column of result
    - dropping the first column from the result
    - printing it concatenated after the matching rows
  - could have many duplicates by getting all paths?
- what if a file contains paths?
  - beginning column is starting node to join with, final column is result, insert the whole table?
  - join just like other individual operation
- `zet/20221023085822/walkquery`

```
zet/20221023085822/walkquery

zet/20221023085822/walkquery --human @bash like shell : : @tip
zet/20221023085822/walkquery --human --path @bash like shell : : @tip

zet/20221023085822/walkquery --human @bash like shell : : @tip
```

` zet/20221023085822/README.md `

# Related

- [20221013221136](/zet/20221013221136/README.md) graph query language for zettelkasten
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221024215216](/zet/20221024215216/README.md) future enhancements to graph query language

Tags:

    #idea
