# findings about implementing zettelkasten

- this is a functioning graph database written in like 350 lines of bash and awk
- i can find information with links and add info to anything from anywhere
    - integrated vscode in github platform
- it is so easy to add tons of links when creating a zettel using fzf as a first step
    - `spawn` action
- if you want some hierarchies and directory structure to find things while working on something in the terminal, make some symlinks to the zet directories
- some links should be one-way links
    - ex: bash scripts is a list of all bash scripts and other things relevant to bash
        - remove a backlink to something, but keep scripts indexed by leaving link from ` bash -> thing `.
- converting files from markdown hierarchy of headings
    - creates really sparsely linked cards - need way more links!
- cool regular expression for searching tags in vscode `^- \[[0-9]+].*git`
- can view on github with lynx if you search stuff with `/` to bypass huge text navbars
    - renders in colorized markdown way that looks kinda like bat
    - things have been converted so many times... `markdown -> html -> HTTP -> lynx -> html -> colorized text`

` zet/20221007043646/README.md `

# Related

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
