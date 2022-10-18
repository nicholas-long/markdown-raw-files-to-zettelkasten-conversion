# use function keys or special keybindings in bash

- concept of `use function keys or special keybindings in bash`
- use ctrl v to find function key escape codes
- example: bind f10 to type coyote
```bash
bind '"\e[21~":"coyote"'

# other examples
bind '"\e[24~":"\C-k \C-upwd\n"'
```

` zet/20221018050302/README.md `

# Related

- [20221018050715](/zet/20221018050715/README.md) dotfiles concept

- [20221009165318](/zet/20221009165318/README.md) putting zet cmd script in dotfiles

- [20221010222312](/zet/20221010222312/README.md) tmux workflow

- [20221003151299](/zet/20221003151299/README.md) bash tricks

- [20221008042814](/zet/20221008042814/README.md) WIP

- [20221008061845](/zet/20221008061845/README.md) workflow
- https://stackoverflow.com/questions/4200800/in-bash-how-do-i-bind-a-function-key-to-a-command

Tags:

    #idea #bash
