# put tmux and vim rc config in dockerfile

- concept of `put tmux and vim rc config in dockerfile`
- could use some ideas from pen test environ, but not the whole config
  - too many dependencies and vim plugins that are not needed
- custom vim hotkeys or plugins needed
  - open markdown links
  - colors
- enable mouse in vim and tmux
- added docker entrypoint here
- added tmux and vim rc files and put in Dockerfile
- use tmux prefix key ctrl-a to be familiar for people
- add vim hotkey tab to open markdown links

```
touch zet/20221022000131/tmux.conf
touch zet/20221022000131/vimrc

touch zet/20221022000131/entrypoint
chmod +x zet/20221022000131/entrypoint

```

` zet/20221022000131/README.md `

# Related

- [20221009095853](/zet/20221009095853/README.md) finished
- [20221018050715](/zet/20221018050715/README.md) dotfiles concept
- [20221003150079](/zet/20221003150079/README.md) tmux
- [20221003150067](/zet/20221003150067/README.md) vim
- [20221009015032](/zet/20221009015032/README.md) let's make a dockerfile for zet cmd

Tags:

    #idea
