# full list of zetcmd actions

content

```bash
cat zc | grep -E '^[^(]+)'
    -e|--edit)
    -f|--file|--forwarding-address)
    -q|--query)
    -t|--title|--target)
    -v|--verbose)
    -h|--help)
      cat "$0" | grep '^\s\+-.|--.*' | sed 's/)$//'
    *)
  n|new)
  spawn)
  enum)
  refs)
  search) # fuzzy search with optional content filter
  find) # full content search
  preview)
  unlink)
  rm)
  scanback)
  addref)
  updateref)
  enrich)
```

` zet/20221007055535/README.md `

# Related

- [20221008214406](/zet/20221008214406/README.md) sharing programming projects with zettelkasten
- [20221007193324](/zet/20221007193324/README.md) github actions
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #bash #zettelkasten 
