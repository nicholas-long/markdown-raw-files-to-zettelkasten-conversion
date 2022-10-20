# make date wordlist for fuzzing with bash and parameter expansion

```bash
echo 2020-{01..12}-{01..31}
# convert date words into lines with bash
echo 2020-{01..12}-{01..31} | sed 's/ /\n/g'
```

` zet/20221003151239/README.md `

# Related

- [20221003151299](/zet/20221003151299/README.md) bash tricks

- [20221006035818](/zet/20221006035818/README.md) rwxrob skilstak beginner boost videos

Tags:

    #bash
