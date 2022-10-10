# findings about implementing zettelkasten

- this is a functioning graph database written in like 350 lines of bash and awk
- can tag the cards by adding files: find files by name to list
- i can find information with links and add info to anything from anywhere
    - integrated vscode in github platform
- it is so easy to add tons of links when creating a zettel using fzf as a first step
    - `spawn` action
- links improve the content by adding context
- numbering sequentially based on timestamps can be an arbitrary ordering imposed on zettels
- if you want some hierarchies and directory structure to find things while working on something in the terminal, make some symlinks to the zet directories
- some links should be one-way links
    - ex: bash scripts is a list of all bash scripts and other things relevant to bash
        - remove a backlink to something, but keep scripts indexed by leaving link from ` bash -> thing `.
    - machines need one way links
    - people are good at reading context but bad at navigating complicated UIs until they have a much higher level of experience with them, so links to documentation should be two way or you will get lost and waste time
- converting files from markdown hierarchy of headings
    - creates really sparsely linked cards - need way more links!
- cool regular expression for searching tags in vscode `^- \[[0-9]+].*git`
- can view on github with lynx if you search stuff with `/` to bypass huge text navbars
    - renders in colorized markdown way that looks kinda like bat
    - things have been converted so many times... `markdown -> html -> HTTP -> lynx -> html -> colorized text`
- search content?
  - `./zc search -q .`
- zettel about what you are working on is really useful
    - direct hotlinks to stuff you are doing like to do list
    - already traversing a graph of web page links and scripts when doing normal web browsing
- graph searching concepts
    - if i want to get to a topic, i know a good path to get there through these links
    - i can be working on one thing and get to any other notes with 2-5 clicks
    - only have to remember which things are connected together to navigate the "UI"
- i'm not an expert at designing these yet
    - research graph theory
- issue tracking workflow nodes
  - github has issue tracking - it should be possible to open issues in github and type in zettel IDs and have a relevant zettel linking everything together
  - list of nodes
    - todo
    - wip
    - done
  - make concepts for each
  - make instance for project node
    - connect to concept node, i.e. a project's todo list is an instance of a "todo list concept" and connected to the project
      - easy to find it
- i can't watch a video without thinking of ideas, and i can get to a relevant card in 2 or 3 clicks to write them down
- git already tracks file changes - take advantage of this in scripts
    - can use git to go back in time and replay changes to filesystem
    - can see if enrichment process has changed any files and needs to run again
        - repeated `git add .` and `git status --porcelain` commands
- workflow - windows
    - screens `ctrl` + `win` + left or right
        - hard to change this hotkey
    - `win` v = clipboard manager - if i have to memorize any windows hotkeys, this would be it

` zet/20221007043646/README.md `

# Related

- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
- [20221009192000](/zet/20221009192000/README.md) stuff to put on main page
- [20221003151159](/zet/20221003151159/README.md) Credit where credit is due
- [20221008214406](/zet/20221008214406/README.md) sharing programming projects with zettelkasten
- [20221008183326](/zet/20221008183326/README.md) findings about video notes
- [20221008050923](/zet/20221008050923/README.md) tmux buffers as bash script pipe debug file buffer
- [20221008052510](/zet/20221008052510/README.md) 80-20 rule
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221007175034](/zet/20221007175034/README.md) optimizations for enrichment process
- [20221003151267](/zet/20221003151267/README.md) fzf
- [20221006084204](/zet/20221006084204/README.md) future enhancements to zet cmd
- [20221006032933](/zet/20221006032933/README.md) problems / issues with zet cmd
- [20221003151350](/zet/20221003151350/README.md) awk and bash scripting
- [20221003151299](/zet/20221003151299/README.md) bash tricks
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221006013313](/zet/20221006013313/README.md) zettelkasten

Tags:

    #zettelkasten
