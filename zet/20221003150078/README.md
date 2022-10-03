# tmux get current pane
```bash
tmux list-panes | grep active | cut -d ']' -f 3 | awk '{print $1}'
pane=$(tmux list-panes | grep active | cut -d ']' -f 3 | awk '{print $1}')
```

# References
- [20221003150079](/zet/20221003150079/) tmux
- [20221003150077](/zet/20221003150077/) tmux get current pane working directory
- ~/kb/tmux/get-data-info.md

Tags:
    #assorted

