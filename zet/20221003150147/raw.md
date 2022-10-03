### hacks
- using ex as an editor
  - need significant hacks to remove color from `ex`.
  - need to change CRLF sent from model 100 to get it to work
- using ed as editor
  - not possible to pipe lines into commands?
- bash
  - disable colors everywhere in all bash aliases
  - bash prompt still has some weird escape characters

#### char mappings
- tandy sends 0d as enter.
- tandy expects CRLF as ordinary newline.
` stty onlcr `
- in order to actually feed the line, the tandy requires ~ 0.7s delay between CR and LF (use 1 second to be safe).
` stty cr3 nl1 `
- form feed "\f" clears the screen.
` stty ff1 `
- backspace delay?
` stty bs1 `
  - erase character with BS space BS
` stty crterase `
- strip special chars
` stty istrip `
check `man stty`, section "Output settings", it should be able to accomplish all this.
- additional considerations
  - ixon enable XON/XOFF flow control
  - ixany let any character restart output, not only start character
  - inpck enable input parity checking

