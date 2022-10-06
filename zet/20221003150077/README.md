# tmux get current pane working directory
```bash
panepath=$(tmux display-message -t "$pane" -a | grep pane_current_path | cut -d '=' -f 2)
```

` zet/20221003150077/README.md `

# Related

- [20221003150078](/zet/20221003150078/README.md) tmux get current pane
- ~/kb/tmux/get-data-info.md

Tags:

    #tmux #get 
