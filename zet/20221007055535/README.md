# full list of zetcmd actions

- `menu` - interactive fzf menu loop
  - extra options from menu:
    - lazygit - run lazygit to check changes to filesystem after a step
    - quitter - exit loop
- `connectome` - explore connections between nodes with fuzzy searching (brainstorming)
  - https://en.wikipedia.org/wiki/Connectome
  - really rich combinations of search keywords comes from showing all links and combining the 2 titles
- `search`
  - `-p` print
  - `-e` edit with vim (or `$EDITOR`?)
- `spawn` - start interactive creative spawn process
  - type a title
  - select N nodes
  - card is created with links
  - edit with vim
- `vilink` `viunlink` - visually add / remove links
  - vilink will link one node to many nodes
    - search for nodes uses text from header and all connections for rich keyword search
  - viunlink can unlink more than 2 at a time
    - i think that's a decent way to clear some stuff out
  - has nothing to do with vi but is fzf picker
- `enrich` - content generation process
  - grab any links
  - automatically runs when you commit or merge things to main branch - link

- commands for scripting
  - `addref -t 11111111111111 22222222222222`
  - `unlink` - unlink 2 nodes by IDs - how?
  - `refs`
  - `find` - use `-q` to pass a grep query within vim when running line
  - `new` - create from command line with title and single reference
  - `enum`
  - `rm` - is this necessary?
- implementation details and internals
  - `preview` - it's hard to get fzf settings right so there is one place for previews happening and it's in a subprocess
  - `enrich_links_single`
  - `fixspaces` - clean up spaces in references
    - no need to run manually - called from `enrich`

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

- https://en.wikipedia.org/wiki/Connectome
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221008214406](/zet/20221008214406/README.md) sharing programming projects with zettelkasten
- [20221007193324](/zet/20221007193324/README.md) github actions
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- [20221006032546](/zet/20221006032546/README.md) my original implementation of zet cmd

Tags:

    #zettelkasten  #command #reference
