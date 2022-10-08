# cyberpunk retro machine project Tandy TRS-80 Model 100 terminal hacks char mappings
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

` zet/20221003150146/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes node
- [20221003150147](/zet/20221003150147/README.md) cyberpunk retro machine project Tandy TRS-80 Model 100 terminal hacks
- ~/kb/linux/cyberpunk-retro-machine-serial-terminals.md

Tags:

    #linux #cyberpunk 
