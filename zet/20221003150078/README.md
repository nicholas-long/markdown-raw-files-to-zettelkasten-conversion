# tmux get current pane
```bash
tmux list-panes | grep active | cut -d ']' -f 3 | awk '{print $1}'
pane=$(tmux list-panes | grep active | cut -d ']' -f 3 | awk '{print $1}')
```

` zet/20221003150078/README.md `

# Related

- [20221012065200](/zet/20221012065200/README.md) side panels work in vim with tmux over ssh now?
- [20221010180841](/zet/20221010180841/README.md) screen and tmux rwxrob video
- [20221003150079](/zet/20221003150079/README.md) tmux
- [20221003150077](/zet/20221003150077/README.md) tmux get current pane working directory
- ~/kb/tmux/get-data-info.md

Tags:

    #tmux #get 
