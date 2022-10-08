# zet cmd spawn feature

- spawn a new zettel and fzf search for existing links.
    - use `-q` to query
        - optional
    - use `-t` to set title first
        - before you forget that good title you had while fuzzy finding

```bash
./zc spawn -q 'zettelkasten' -t 'awesome idea about zettelkasten' # spawn a new zettel idea searching for links to zettelkasten
./zc spawn -q 'concept of' -t concepts # search for the text "concept of" and link to new zettel named concepts
./zc spawn -t 'bash scripting pitfalls and anti-patterns'
./zc spawn -t 'why does git ask questions instead of pulling changes'
./zc spawn -t 'WIP'
./zc spawn -t workflow
./zc spawn -t 'autorunning scripts in cards'
```

` zet/20221006140520/README.md `

# Related

- [20221006051705](/zet/20221006051705/README.md) moving to real zk implementation
- [20221006084204](/zet/20221006084204/README.md) future enhancements to zet cmd
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #notes 
