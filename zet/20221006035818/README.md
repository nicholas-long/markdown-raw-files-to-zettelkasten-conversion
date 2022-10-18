# rwxrob skilstak beginner boost videos

these videos are called "beginner boost" but they are filled with incredibly useful nuggets.


- video 7?
  - ex commands

- video 8
  - fundamentals: it is good to go back and learn the fundamentals of things like vi and ed/ex to work with things like reverse shells on alpine dockers, where most familiar and useful GNU/Linux utilities will not be installed in favor of lightweight busybox implementations.
  - zsh is not posix compliant with numbers, and that's dangerous for math
    - why do math in bash?
  - using vim
    - cool tricks
      - `!!` default shortcut to run `:.!` filter current line and pipe to program 
      - `!}` paragraphs
        - `!}` default shortcut to run rest of paragraph through filter program
        - delete `!` char for an exact ex spec of the paragraph to grep out and substitute things
  - shebang lines and scripts vs. programs
  - insecure to use `#!/usr/bin/env bash` type shebangs (privesc) `03:32:00` - why people would use it
    - relative path to bash in the script instead of hardcoded `/bin/bash`
    - in this specific case, writable PATH is very nice for privesc
  - talking about terminalforlife taking down his youtube channel and deleting all his videos @ `03:41:25`
    - always wondered what happened to his channel - ?
    - took down all his content and left 1 video that says "i hate youtube"
  - bash cookbook
  - exercism ?

- video week 9
  - posix info @ `0:49:00`
  - scripting
  - "never use single square brackets"
  - vim tips
    - `ZZ` write close quit
  - inodes and small files @ `1:11:00`
  - moving across filesystem boundaries does not work
    - arch puts `/tmp` in a different filesystem
  - scripts and putting `./` in `PATH` @ `1:45:00`
    - create commands to put new simple scripts in places in your user path
    - don't use file extensions - reasonable idea
      - i think switching scripts from sh to awk should be easy, for instance
  - shellcheck - check bash scripts - available in kali repo
    - POSIX incompatibility
    - common security issues
  - started to demonstrate some sort of script injection `1:52:00`
  - weird tangent - playing terminal bells with `printf "\a"` @ `2:04:00`
  - alpine shell builtins @ `2:09:00`
    - printf - yes
    - tee is a command not a builtin
  - printf argument expansion and strings @ `2:41:00`
    - cool find `printf -v` sets the printed value to a variable
  - parameter expansion in bash manual @ `2:57:00`
    - ` The  '$'  character  introduces  parameter expansion, command substitution, or arithmetic expansion.  `
  - passing environment variables into scripts as vim filters @ `3:13:00`
  - cant put backtick inside a backtick @ `03:20:00`
    - every double quote has a separate context
  - function is like a machine @ `03:32:00`
  - why double quotes around arguments @ `03:42:00`
    - double quote all the things, all the time.
  - R command in vim is useful for overwriting timestamps in this video
  - interesting printf behavior @ `03:44:00`
    - if printf has more arguments than `%` formats, then it starts repeating and acting like a word-by-word processor.
    ```
    printf "%s is cool\n" cats unix
    cats is cool
    unix is cool
    ```

- video week 10
  - bash
  - vim
    - paragraphs `dap`
    - words `dw.......`
    - use simple commands and repeat with `.`
  - the word grok @ `00:19:00`
  - somebody named "Het" or "Senor Het" @ `00:23:45`
    - content creator
    - "into advanced stuff"
  - cool speed trick: touch a file files with `> filename` with no command to write empty
  - file extensions are bad @ `00:30:00` - `00:35:00`
    - projects end up with things named `.sh` in them it's hard to change
    - "it's like writing a function with hungarian notation at the end"
  - running with no shebang
  - insecure to use `#!/usr/bin/env bash` type shebangs (privesc) `00:41:00`
    - env looks things up in PATH
    - prevalence in usage is related to ruby
  - talking about privesc with misconfigured paths @ `00:45:55`
  - why to use `command -v` instead of `which` in scripts - safer - make a card?
    - which can return false positives
  - tip: exporting a specific PATH in scripts to avoid getting hacked
  - tip: "can find things to exploit by searching github for 'usr/bin/env'" @ `00:53:20`
    - good idea for a project ?
  - "go banzai utility monoliths, which is a term i invented to deal with the dangerous problem of having a bunch of bash scripts"
  - understand when to use functions or commands or (not?) aliases
  - zettelkasten example workflow @ `00:57:00`
  - "cd path" @ `01:00:40` - ?!
  - aliases don't work in vim filters unless you have configured aliases to behave like commands
    - sounds sketch
    - use executable scripts instead though
  - could `export -f` to export functions to be able to run as commands from a shell exec - not ideal @ `01:06:00`
    - go executables do not execute bash functions
  - tip: precede anything with `\` in bash to disable aliases / functions ( only run commands )
    - ex (me): `ls` is aliased on all debian systems, try out `\ls`
  - asdf @ `00:00:00`

` zet/20221006035818/README.md `

# Related

- [20221018183943](/zet/20221018183943/README.md) shellcheck
- [20221007205652](/zet/20221007205652/README.md) find limit recusion depth
- [20221003151209](/zet/20221003151209/README.md) linux privilege escalation exploiting scripts on linux
- [20221006213953](/zet/20221006213953/README.md) video notes
- [20221009023024](/zet/20221009023024/README.md) screenshot of taking notes
- [20221006200018](/zet/20221006200018/README.md) OCR youtube video frames
- [20221006191703](/zet/20221006191703/README.md) bash trick printf to variable
- [20221006142610](/zet/20221006142610/README.md) recommending zettelkasten note-taking method
- [20221006073459](/zet/20221006073459/README.md) assorted notes from videos rwxrob notes `Tue Oct 4`
- [20221006063114](/zet/20221006063114/README.md) small files are stored in inodes in ext4
- <https://www.youtube.com/watch?v=yu2kO2yb7L8&list=PLrK9UeDMcQLpkdoPTNG7nSBA6Bb4AoJX1&index=9>
- [20221006033248](/zet/20221006033248/README.md) rwxrob
- [20221003150073](/zet/20221003150073/README.md) Run vim as a script on datafile, write to file `output`
- [20221003150175](/zet/20221003150175/README.md) unix editor ex / ed example commands
- [20221003151239](/zet/20221003151239/README.md) make date wordlist for fuzzing with bash and parameter expansion

Tags:

    #linux #video #notes 
