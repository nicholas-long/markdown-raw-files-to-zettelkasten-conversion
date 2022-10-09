# putting zet cmd script in dotfiles

the concept of `putting zet cmd script in dotfiles`

- `echo "$(pwd)/zc \$@" > ~/.local/bin/z`
  - potential problem with this shortcut: args not quoted
    - `z find` as a vim filter won't work
      - use `./zc find` as vim filter for now
    - can use interactive menu from here
- run with `z menu`

` zet/20221009165318/README.md `

# Related

- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221009014200](/zet/20221009014200/README.md) concept of a command
- [20221008021753](/zet/20221008021753/README.md) home .local/bin scripts
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #todo #idea
