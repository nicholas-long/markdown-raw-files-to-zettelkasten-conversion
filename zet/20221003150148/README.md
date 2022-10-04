# cyberpunk retro machine project Tandy TRS-80 Model 100 terminal terminfo and TERM variable
```bash
git clone https://github.com/hackerb9/Tandy-Terminfo
cd Tandy-Terminfo && sudo tic tandy.terminfo
cd -

# now edit the shell rc file to change the terminal
# 8 lines
export TERM=td100
# 7 lines tall allow telnet status line
export TERM=td100-s
```

# References
- [20221003150150](/zet/20221003150150/README.md) cyberpunk retro machine project Tandy TRS-80 Model 100 terminal
- ~/kb/linux/cyberpunk-retro-machine-serial-terminals.md

Tags:
    #assorted #linux #cyberpunk
