# zsh stuff at bottom of zshrc
```
source $HOME/functions.sh
source $HOME/tmux-scripts/gruvbox.zsh-theme
source $HOME/tmux-scripts/agnoster.zsh-theme

zle -C hist-complete complete-word _generic
zstyle ':completion:hist-complete:*' completer _history
```
# References
- [20221003150191](/zet/20221003150191/README.md) zsh
- ~/kb/linux/zsh-see-default-bindings.md

Tags:
    #assorted
