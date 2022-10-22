# put tmux and vim rc config in dockerfile

- concept of `put tmux and vim rc config in dockerfile`
- could use some ideas from pen test environ, but not the whole config
  - too many dependencies and vim plugins that are not needed
- custom vim hotkeys or plugins needed
  - open markdown links
  - colors
- use tmux prefix key ctrl-a to be familiar for people?
- make unicode work in tmux - set env var and `-u`
- enable mouse in vim and tmux
- store files in this card and include from Dockerfile

```
touch zet/20221022000131/tmux.conf
touch zet/20221022000131/vimrc

touch zet/20221022000131/entrypoint
chmod +x zet/20221022000131/entrypoint

```

` zet/20221022000131/README.md `

# Related

- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221018050715](/zet/20221018050715/README.md) dotfiles concept
- [20221003150079](/zet/20221003150079/README.md) tmux
- [20221003150067](/zet/20221003150067/README.md) vim
- [20221009015032](/zet/20221009015032/README.md) let's make a dockerfile for zet cmd

Tags:

    #idea
