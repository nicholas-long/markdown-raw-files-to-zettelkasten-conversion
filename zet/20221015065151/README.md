# terminal color escape sequences and ncurses python video

- learned about tput - relevant for model 100 terminal
- can type color escape sequence on keyboard with `ctrl v esc [31m` = red
- ncurses
- setting `TERM=dumb` makes terminal act like line printer
- vt100=24x80
- line modes
  - cooked - normal mode you use in terminal
  - raw - direct input
  - cbreak - character break mode
- is this how these work? vim? fzf? fff?
- curses - unified common api to position chars for all screens
  - should work similarly in various languages
  - library can handle looking up terminfo
- working with it looks tedious and full of boilerplate code
- things have to be done in the right order or refreshes don't work or things get overwritten
- interesting considerations
  - refresh in reverse order to avoid flickering
  - turn settings back on
- urwid
  - modular design with widgets and components and functions

- <https://github.com/metal3d/bashsimplecurses/blob/master/simple_curses.sh> bash curses
  - plain box that does redraw, could render command output in it

```
```

` zet/20221015065151/README.md `

# Related

- [20221003151301](/zet/20221003151301/README.md) pipe into sed command to strip color
- [20221015005745](/zet/20221015005745/README.md) python coding
- [20221015064621](/zet/20221015064621/README.md) tput get terminal capabilities
- [20221012070318](/zet/20221012070318/README.md) linux terminal
- [20221006213953](/zet/20221006213953/README.md) video notes
- [20221003151442](/zet/20221003151442/README.md) Box drawing ascii unicode characters
- https://www.youtube.com/watch?v=eN1eZtjLEnU Use curses, don't swear

Tags:

    #notes #linux #terminal
