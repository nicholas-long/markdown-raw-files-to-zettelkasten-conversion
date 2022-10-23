# save fzf completion history for each card

- concept of `save fzf completion history for each card`
- could use to track which links are most useful?
- best links to front in browser
- deep search history?
  - not for individual cards, as a whole
- this makes ctrl+n and ctrl+p load the previously typed text and saves text
- not a good idea to check raw data like this into git? should add to gitignore?

```
History
  --history=FILE        History file
  --history-size=N      Maximum number of history entries (default: 1000)

# add after line: while [ 1 == "$going" ]; do
  id="$doc" # get id here too for fzf history
  if [[ "$doc" =~ zet/[0-9]+ ]]; then
    id=$(echo "$doc" | awk -F / '{ print $(NF-1) }')
  fi
# add to fzf options for browser
    "--history=fzftracking/$id" \
```

` zet/20221022232030/README.md `

# Related

- [20221009095853](/zet/20221009095853/README.md) finished
- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221003151267](/zet/20221003151267/README.md) fzf
- [20221003151264](/zet/20221003151264/README.md) fzf Help
- [20221013021614](/zet/20221013021614/README.md) terminal graph browser

Tags:

    #idea
