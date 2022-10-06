# tmux get current pane
```bash
tmux list-panes | grep active | cut -d ']' -f 3 | awk '{print $1}'
pane=$(tmux list-panes | grep active | cut -d ']' -f 3 | awk '{print $1}')
```

` zet/20221003150078/README.md `

# Related

- [20221003150079](/zet/20221003150079/README.md) tmux
- [20221003150077](/zet/20221003150077/README.md) tmux get current pane working directory
- ~/kb/tmux/get-data-info.md

Tags:

    #tmux #get 
