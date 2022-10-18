# putting zet cmd script in dotfiles

the concept of `putting zet cmd script in dotfiles`

- `echo "$(pwd)/zc \$@" > ~/.local/bin/z`
  - make sure this is in your path
  - potential problem with this shortcut: args not quoted
    - `z find` as a vim filter won't work
      - use `./zc find` in the working directory of repository as vim filter for now
    - can use interactive menu from z shortcut
    - solution:
      - copy the whole zetcmd into the dir?
      - make example script in here (not auto-run lol)
- run with `z menu`

` zet/20221009165318/README.md `

# Related

- [20221018050302](/zet/20221018050302/README.md) use function keys or special keybindings in bash
- [20221018050715](/zet/20221018050715/README.md) dotfiles concept
- [20221012061227](/zet/20221012061227/README.md) scared of using vim to take notes?
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221009014200](/zet/20221009014200/README.md) concept of a command
- [20221008021753](/zet/20221008021753/README.md) home .local/bin scripts
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #todo #idea
