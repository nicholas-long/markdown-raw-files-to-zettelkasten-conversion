# full list of zetcmd actions

- `menu` - fzf loop
- `connectome` - explore connections between nodes with fuzzy searching (brainstorming)
- `search`
  - `-p` print
  - `-e` edit with vim (or `$EDITOR`?)
- `spawn` - start interactive creative spawn process
  - type a title
  - select N nodes
  - card is created with links
- `vilink` `viunlink` - visually add / remove links
  - you can link between more than 2 at a time but i would not recommend going wild with this because it links all of them to each other in a web.
- `enrich` - content generation process
  - grab any links
  - automatically runs when you commit or merge things to main branch - link

- implementation details and internals
  - `unlink`
  - `preview`
    - it's hard to get fzf settings right so there is one place for previews happening and it's in a subprocess
    - you can call it
  - `new`
  - `enum`
  - `refs`
  - `find`
  - `rm`
  - `addref`
  - `enrich_links_single`
  - `fixspaces`

- flags
```
-p|--print
-e|--edit
-f|--file|--forwarding-address
-q|--query
-t|--title|--target
-r|--reference
-v|--verbose
-h|--help
```

` zet/20221007055535/README.md `

# Related

- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221008214406](/zet/20221008214406/README.md) sharing programming projects with zettelkasten
- [20221007193324](/zet/20221007193324/README.md) github actions
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #bash #zettelkasten 
