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

- 20221003151424
- 20221006032546

Tags:

    #bash #zettelkasten 
