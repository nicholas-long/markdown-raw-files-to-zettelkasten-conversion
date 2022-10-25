# terminal graph browser

- concept of `terminal graph browser`
- text user interface ( TUI ) to follow links
  - interfaced based on workflow from using web browser and github markdown preview to traverse links
  - add and remove links quickly with fzf
  - preview window shows document always, menu picks options, option to visit links
- menu options documentation
  - `goto ...`    - follow link
  - `tab`         - if running in tmux, open multiple other links in new tmux windows (like browser tabs)
  - `mkfile`      - touch a file and optionally `chmod +x`
  - `tagindex`    - browse by tags
  - `workdir`     - open new tmux window in working directory of current card if run within tmux
  - `addtags`     - add multiple tags to card
  - `edit ...`    - edit card or attachments in vim
  - `/deep`       - deep keyword search combining links, titles, content, and fzf fuzzy finding. launches new tmux windows if tmux is running.
  - `~`           - return to home page
  - `spawn`       - create a new zettel card linked to here. enter title at prompt. new card is available to navigate and edit immediately.
  - `xfer`        - copy between cards easily by selecting other cards from links to open in vim tabs
  - `link`        - insert many links with fzf fuzzy finder
  - `unlink`      - select one link to remove. will remove from target zettel card as well.
  - `stat`        - git status preview, colorized. launches lazygit if selected.
  - `back`        - go back, like a browser
    - if you edit links in cards you are working on, you could get trapped and need to hop back to previous card
  - `copypath`    - if running in tmux, copy the current markdown file path to tmux buffer
  - `enrich`      - insert backlinks and other various cleanup scripts. runs automatic scripts in cards
    - consider the security implications of automatic scripts
  - `quit`        - exit program. i like q as a hotkey so this is good in fzf.

```
ln -s zet/20221013021614/ browser
```

- changed preview hotkeys to page up and page down to match lazygit hotkeys
- added ability to list and edit attachments
- added tag features: quick tag add
- todo
  - spawn new shell tmux window in working directory of zettel
  - xfer to files in directory as well as links
  - quick tag remove
  - quick git ops - push pull commit - implement here instead of lazygit

` zet/20221013021614/README.md `

# Related

- [20221013195816](/zet/20221013195816/README.md) ability to spawn from an existing card
- [20221012083444](/zet/20221012083444/README.md) building out structure, organization, and architecture quickly
- [20221014071406](/zet/20221014071406/README.md) using tools together in strange / convenient ways - examples
- [20221013203732](/zet/20221013203732/README.md) feels like "being plugged into the matrix"
- [20221022232030](/zet/20221022232030/README.md) save fzf completion history for each card
- [20221012102820](/zet/20221012102820/README.md) use connectome for context and keyword during spawn
- [20221015021344](/zet/20221015021344/README.md) graph explorer does not let you add 0 links or back out of link screen
- [20221011155715](/zet/20221011155715/README.md) video of how to make a node in my implementation
- [20221014153143](/zet/20221014153143/README.md) scroll preview window
- [20221014070023](/zet/20221014070023/README.md) findings from implementing deep connectome search
- [20221013204452](/zet/20221013204452/README.md) make a video of terminal graph browser and zkvr workflow loop in action
- [20221012102144](/zet/20221012102144/README.md) preview window for menu
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221023182804](/zet/20221023182804/README.md) browse to tagindex pages
- [20221014215609](/zet/20221014215609/README.md) finished, but with ongoing related work
- [20221008042814](/zet/20221008042814/README.md) WIP

Tags:

    #feature #tui
