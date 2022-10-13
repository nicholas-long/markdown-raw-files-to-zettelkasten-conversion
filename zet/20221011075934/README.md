# configure and run lynx with vi mode hotkeys

- `i` view information about a link - copy URLs to browser from here
- speed improvements from viewing (simple) websites in terminal can be helpful
- big websites with big navbars do not work great
  - github - "jump to content" helps
- vimode can be set in config files
- config files global in etc
  - lynx.lss
  - lynx.cfg

- configurations - rwxrob knows how to configure it
  - lynx.cfg example https://github.com/rwxrob/dot/blob/main/lynx/lynx.cfg
    ```
    .h2 VI_KEYS_ALWAYS_ON
    .h2 EMACS_KEYS_ALWAYS_ON
    # Vi or Emacs movement keys, i.e. familiar hjkl or ^N^P^F^B .
    # These are defaults, which can be changed in the Options Menu or .lynxrc .
    VI_KEYS_ALWAYS_ON:TRUE
    #EMACS_KEYS_ALWAYS_ON:FALSE
    ```
  - loading configurations dynamically https://github.com/rwxrob/dot/blob/ae8a71ebd2ef137fca4f3001f884280528edef86/scripts/lynx
    ```
    if [ -e "$HOME/.config/lynx/lynx.cfg" ];then
      export LYNX_CFG="$HOME/.config/lynx/lynx.cfg"
    fi
    if [ -e "$HOME/.config/lynx/lynx.lss" ];then
      export LYNX_LSS="$HOME/.config/lynx/lynx.lss"
    fi
    ```

` zet/20221011075934/README.md `

# Related

- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221009162948](/zet/20221009162948/README.md) useful vim hotkeys for zettelkasten
- [20221008214631](/zet/20221008214631/README.md) vim hotkeys and tricks
- [20221003150067](/zet/20221003150067/README.md) vim
- [20221008061845](/zet/20221008061845/README.md) workflow
- [20221006033248](/zet/20221006033248/README.md) rwxrob
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221008212929](/zet/20221008212929/README.md) running process
- [20221008221822](/zet/20221008221822/README.md) www - the web
- https://www.youtube.com/watch?v=Vdd2MTv6vrs
- https://gitlab.com/rwxrob/dotfiles
- https://github.com/rwxrob/config

Tags:

    #web #tui
