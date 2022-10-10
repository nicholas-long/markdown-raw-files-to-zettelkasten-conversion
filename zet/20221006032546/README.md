# my implementation of zet cmd

name: zc
- fzf selection window to select lots of references or spawn new nodes
- github actions
  - automatically enrich and make references bidirectional
- graph data entry and linking tool
- installing
  - [20221009165318](/zet/20221009165318/README.md) putting zet cmd script in dotfiles
    - `echo "$(pwd)/zc \$@" > ~/.local/bin/z`
      - make sure `$HOME/.local/bin` is in your path
      - still trying to figure out this shortcut since it's not perfect
- run with `z menu` - interactive menu loop with fzf prompt for speed
- [20221007055535](/zet/20221007055535/README.md) full list of zetcmd actions

- TODO: dependencies?
  - fzf
  - bat (the real one, not the kali package)
  - lots of stuff - needs a docker

- help text
```
./zc -h
Usage: ./zc action [ options ]
| action      : [ spawn, search, find, rm, print, enrich, new, refs, preview ]
| | fzf       : [ menu, spawn, search, vilink, viunlink, connectome ]
| | scripting : [ find, addref, rm, print, enrich, new, refs, preview, enum, unlink, enrich_links_single, fixspaces ]
Options:
    -p|--print
    -e|--edit
    -f|--file|--forwarding-address
    -q|--query
    -t|--title|--target
    -r|--reference
    -v|--verbose
    -h|--help
```

` zet/20221006032546/README.md `

# Related

- [20221007055535](/zet/20221007055535/README.md) full list of zetcmd actions
- [20221006084204](/zet/20221006084204/README.md) future enhancements to zet cmd
- [20221006033248](/zet/20221006033248/README.md) rwxrob
- [20221006051705](/zet/20221006051705/README.md) moving to real zk implementation
- [20221007193634](/zet/20221007193634/README.md) example github actions scripts
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221006032933](/zet/20221006032933/README.md) problems / issues with zet cmd
- [20221007181438](/zet/20221007181438/README.md) directories and bash scripts as commands
- [20221007175034](/zet/20221007175034/README.md) optimizations for enrichment process
- [20221007051119](/zet/20221007051119/README.md) zet cmd enrich process
- [20221007043646](/zet/20221007043646/README.md) findings about implementing zettelkasten
- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
- [20221006142610](/zet/20221006142610/README.md) recommending zettelkasten note-taking method
- [20221009192000](/zet/20221009192000/README.md) stuff to put on main page
- [20221009023024](/zet/20221009023024/README.md) screenshot of taking notes
- [20221010184202](/zet/20221010184202/README.md) screenshots of github ui graph showing workflow acceleration
- [20221010164408](/zet/20221010164408/README.md) why do i have to export this line in bash or it does not work as intended
- [20221010153630](/zet/20221010153630/README.md) make symlinks for markdown titles for search optimization
- [20221008214406](/zet/20221008214406/README.md) sharing programming projects with zettelkasten
- [20221009171616](/zet/20221009171616/README.md) converting markdown formats with `[[links]]`
- [20221009165318](/zet/20221009165318/README.md) putting zet cmd script in dotfiles
- [20221009162538](/zet/20221009162538/README.md) add menu
- [20221009162948](/zet/20221009162948/README.md) useful vim hotkeys for zettelkasten
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221009091132](/zet/20221009091132/README.md) new links should come in at the bottom
- [20221009015032](/zet/20221009015032/README.md) let's make a dockerfile for zet cmd
- [20221008210746](/zet/20221008210746/README.md) use title of zettel as fzf prompt
- [20221008063052](/zet/20221008063052/README.md) autorunning scripts in cards
- [20221008050923](/zet/20221008050923/README.md) tmux buffers as bash script pipe debug file buffer
- [20221007200304](/zet/20221007200304/README.md) how to use zc cmd
- [20221006013313](/zet/20221006013313/README.md) zettelkasten
- [20221006140520](/zet/20221006140520/README.md) zet cmd spawn feature
- https://github.com/naps62/zk
- https://www.google.com/search?q=zettelkasten+fzf+vim
- [20221007205652](/zet/20221007205652/README.md) find limit recusion depth
- [20221009211130](/zet/20221009211130/README.md) zettelkasten can be like a living knowledge base
- [20221006141216](/zet/20221006141216/README.md) weird issue with enrich

Tags:

    #zettelkasten #bash #todo #coding 
