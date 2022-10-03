## stuff at bottom of zshrc
```
source $HOME/functions.sh
source $HOME/tmux-scripts/gruvbox.zsh-theme
source $HOME/tmux-scripts/agnoster.zsh-theme

zle -C hist-complete complete-word _generic
zstyle ':completion:hist-complete:*' completer _history
```
