# use title of zettel as fzf prompt

improvement `use title of zettel as fzf prompt`

```bash
fzf -h | grep prompt
    --prompt=STR          Input prompt (default: '> ')
    --header-first        Print header before the prompt line
```

changes to `zet/20221008210746/README.md`
```bash
$prog find -q "$query" 2>/dev/null | fzf -m --prompt="$title > " | awk '... snip ...'
```

` zet/20221008210746/README.md `

# Related

- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221003151267](/zet/20221003151267/README.md) fzf

Tags:

    #enhancement
