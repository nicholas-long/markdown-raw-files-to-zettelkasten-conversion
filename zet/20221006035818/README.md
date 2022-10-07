# rwxrob skilstak beginner boost videos

these videos are called "beginner boost" but they are filled with incredibly useful nuggets.


- video 7?
  - ex commands

- video 8
  - zsh is not posix compliant with numbers, and that's dangerous for math
    - why do math in bash?
  - using vim
    - cool tricks
      - `!!` default shortcut to run `:.!` filter current line and pipe to program 
      - `!}` paragraphs
        - `!}` default shortcut to run rest of paragraph through filter program
        - delete `!` char for an exact ex spec of the paragraph to grep out and substitute things
  - fundamentals: it is good to go back and learn the fundamentals of things like vi and ed/ex to work with things like reverse shells on alpine dockers, where most familiar and useful GNU/Linux utilities will not be installed in favor of lightweight busybox implementations.

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
  - shellcheck - check bash scripts
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
    - ``` The  `$'  character  introduces  parameter expansion, command substitution, or arithmetic expansion.  ```
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
  - asdf @ `00:00:00`

` zet/20221006035818/README.md `

# Related

- [20221006200018](/zet/20221006200018/README.md) OCR youtube video frames
- [20221006191703](/zet/20221006191703/README.md) bash trick printf to variable
- [20221006142610](/zet/20221006142610/README.md) recommending zettelkasten note-taking method
- [20221006073459](/zet/20221006073459/README.md) assorted notes from videos rwxrob notes `Tue Oct 4`
- [20221006063114](/zet/20221006063114/README.md) small files are stored in inodes in ext4
- <https://www.youtube.com/watch?v=yu2kO2yb7L8&list=PLrK9UeDMcQLpkdoPTNG7nSBA6Bb4AoJX1&index=9>
- [20221006033248](/zet/20221006033248/README.md) rwxrob
- [20221003150073](/zet/20221003150073/README.md) Run vim as a script on datafile, write to file `output`
- [20221003150175](/zet/20221003150175/README.md) ex commands  Some of these might apply to ed as well
- [20221003151239](/zet/20221003151239/README.md) make date wordlist for fuzzing with bash and parameter expansion

Tags:

    #linux #video #notes 
