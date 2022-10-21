# terminal graph browser

- concept of `terminal graph browser`
- text user interface ( TUI ) to follow links
  - interfaced based on workflow from using web browser and github markdown preview to traverse links
  - add and remove links quickly with fzf
  - preview window shows document always, menu picks options, option to visit links
- menu options documentation
  - `/deep` - deep keyword search combining links, titles, content, and fzf fuzzy finding. spawns new tmux windows if tmux is running.
  - `spawn` - enter a title and create a new zettel card linked to here
  - `link` - insert many links with fzf fuzzy finder
  - `unlink` - select one link to remove. will remove from target zettel card as well.
  - `copypath` - if running in tmux, copy the current markdown file path to tmux buffer
  - `tab` - if running in tmux, open multiple other links in new tmux windows (like browser tabs)
  - `enrich` - insert backlinks and other various cleanup scripts. runs automatic scripts in cards
    - consider the security implications of automatic scripts
  - `back` - go back, like a browser
    - if you edit links in cards you are working on, you could get trapped and need to hop back to previous card
  - `edit` - edit card in vim
  - `xfer` - copy between cards easily by selecting other card from links to open in vim tabs

```
ln -s zet/20221013021614/ browser
```

` zet/20221013021614/README.md `

# Related

- [20221012102820](/zet/20221012102820/README.md) use connectome for context and keyword during spawn
- [20221012083444](/zet/20221012083444/README.md) building out structure, organization, and architecture quickly
- [20221015021344](/zet/20221015021344/README.md) graph explorer does not let you add 0 links or back out of link screen
- [20221011155715](/zet/20221011155715/README.md) video of how to make a node in my implementation
- [20221014153143](/zet/20221014153143/README.md) scroll preview window
- [20221014071406](/zet/20221014071406/README.md) using tools together in strange / convenient ways - examples
- [20221014070023](/zet/20221014070023/README.md) findings from implementing deep connectome search
- [20221013204452](/zet/20221013204452/README.md) make a video of terminal graph browser and zkvr workflow loop in action
- [20221013203732](/zet/20221013203732/README.md) feels like "being plugged into the matrix"
- [20221013195816](/zet/20221013195816/README.md) ability to spawn from an existing card
- [20221009095853](/zet/20221009095853/README.md) finished
- [20221012102144](/zet/20221012102144/README.md) preview window for menu
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #idea #tui
