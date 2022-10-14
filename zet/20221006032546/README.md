# my implementation of zet cmd

![screenshot of graph explorer](/zet/20221010184202/Screenshot_2022-10-14_014740.png)

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
  - lazygit
- needs a docker

- help text
```
./zc -h
Usage: ./zc action [ options ]
| action      : [ spawn, search, find, rm, print, enrich, new, refs, preview ]
| | fzf       : [ menu, spawn, search, vilink, viunlink, connectome ]
| | scripting : [ find, addref, rm, print, enrich, new, refs, preview, enum, unlink, enrich_links_single, fixspaces ]
Options:
    -m|--multiple
    -p|--print
    -e|--edit
    -f|--file|--forwarding-address
    -q|--query
    -t|--title|--target
    -r|--reference
    -v|--verbose
    -h|--help
```

- i think the project should be broken into 3 parts
  - console utility (colelction of scripts)
  - graph browser, linker, editor
  - workflow loop

` zet/20221006032546/README.md `

# Related

- [20221014201909](/zet/20221014201909/README.md) add lazygit to dockerfile for zet cmd
- [20221014190239](/zet/20221014190239/README.md) kb file named kb/bash-scripting/check-empty-var.md
- [20221014154934](/zet/20221014154934/README.md) terminal user interface (TUI) program
- [20221014154703](/zet/20221014154703/README.md) lazygit program
- [20221014074318](/zet/20221014074318/README.md) important choices of tech stack
- [20221014073148](/zet/20221014073148/README.md) reasoning behind choices for tech stack - finding dependable and long lasting technology
- [20221014070023](/zet/20221014070023/README.md) findings from implementing deep connectome search
- [20221013221136](/zet/20221013221136/README.md) implement a graph query language
- [20221013214821](/zet/20221013214821/README.md) check for command injection
- [20221013204452](/zet/20221013204452/README.md) make a video of terminal graph browser and zkvr workflow loop in action
- [20221013203732](/zet/20221013203732/README.md) feels like "being plugged into the matrix"
- [20221013193405](/zet/20221013193405/README.md) make a list of sparse nodes
- [20221007055535](/zet/20221007055535/README.md) full list of zetcmd actions
- [20221006084204](/zet/20221006084204/README.md) future enhancements to zet cmd
- [20221011155715](/zet/20221011155715/README.md) video of how to make a node in my implementation
- [20221013021614](/zet/20221013021614/README.md) terminal graph browser
- [20221010184202](/zet/20221010184202/README.md) screenshots of github ui graph showing workflow acceleration
- [20221009162948](/zet/20221009162948/README.md) useful vim hotkeys for zettelkasten
- [20221006033248](/zet/20221006033248/README.md) rwxrob
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221006051705](/zet/20221006051705/README.md) moving to real zk implementation
- [20221007193634](/zet/20221007193634/README.md) example github actions scripts
- [20221007181438](/zet/20221007181438/README.md) directories and bash scripts as commands
- [20221006032933](/zet/20221006032933/README.md) problems / issues with zet cmd
- [20221007051119](/zet/20221007051119/README.md) zet cmd enrich process
- [20221007043646](/zet/20221007043646/README.md) findings about implementing zettelkasten
- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
- [20221006142610](/zet/20221006142610/README.md) recommending zettelkasten note-taking method
- [20221011145143](/zet/20221011145143/README.md) bat command pretty printer
- [20221012102630](/zet/20221012102630/README.md) search other knowledge bases for links during spawn
- [20221012102820](/zet/20221012102820/README.md) use connectome for context and keyword during spawn
- [20221012102144](/zet/20221012102144/README.md) preview window for menu
- [20221012094712](/zet/20221012094712/README.md) strange issues with sort and locale and tags
- [20221012090359](/zet/20221012090359/README.md) first post from netbook
- [20221012083444](/zet/20221012083444/README.md) building out structure, organization, and architecture quickly
- [20221007193324](/zet/20221007193324/README.md) github actions
- [20221012061227](/zet/20221012061227/README.md) scared of using vim to take notes?
- [20221011193153](/zet/20221011193153/README.md) collection of zettelkasten tips from youtube
- [20221011192157](/zet/20221011192157/README.md) cool names for the project
- [20221011175709](/zet/20221011175709/README.md) zettelkasten note taking software programs
- [20221011153359](/zet/20221011153359/README.md) ability to clone cards
- [20221011153230](/zet/20221011153230/README.md) template example card for scripts
- [20221011095447](/zet/20221011095447/README.md) change vilink behavior - 1 to many
- [20221011090542](/zet/20221011090542/README.md) ripgrep might be useful
- [20221009192000](/zet/20221009192000/README.md) stuff to put on main page
- [20221009023024](/zet/20221009023024/README.md) screenshot of taking notes
- [20221010164408](/zet/20221010164408/README.md) why do i have to export this line in bash or it does not work as intended
- [20221010153630](/zet/20221010153630/README.md) make symlinks for markdown titles for search optimization
- [20221008214406](/zet/20221008214406/README.md) sharing programming projects with zettelkasten
- [20221009171616](/zet/20221009171616/README.md) converting markdown formats with `[[links]]`
- [20221009165318](/zet/20221009165318/README.md) putting zet cmd script in dotfiles
- [20221009162538](/zet/20221009162538/README.md) add menu
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221009091132](/zet/20221009091132/README.md) new links should come in at the bottom
- [20221009015032](/zet/20221009015032/README.md) let's make a dockerfile for zet cmd
- [20221008210746](/zet/20221008210746/README.md) use title of zettel as fzf prompt
- [20221008063052](/zet/20221008063052/README.md) autorunning scripts in cards
- [20221008050923](/zet/20221008050923/README.md) tmux buffers as bash script pipe debug file buffer
- [20221007200304](/zet/20221007200304/README.md) how to use zc cmd
- [20221006013313](/zet/20221006013313/README.md) zettelkasten
- [20221006140520](/zet/20221006140520/README.md) zet cmd spawn feature
- [20221007205652](/zet/20221007205652/README.md) find limit recusion depth
- [20221009211130](/zet/20221009211130/README.md) zettelkasten can be like a living knowledge base
- [20221006141216](/zet/20221006141216/README.md) weird issue with enrich
- [20221012220453](/zet/20221012220453/README.md) unlink should be easier
- [20221012144502](/zet/20221012144502/README.md) track modification dates
- [20221007175034](/zet/20221007175034/README.md) optimizations for enrichment process
- https://github.com/naps62/zk - another implementation in bash for reference
- https://www.google.com/search?q=zettelkasten+fzf+vim ?

Tags:

    #zettelkasten #bash #todo #coding 
