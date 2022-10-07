# linux privilege escalation exploiting scripts on linux
- injecting user commands
- relative command names ( alter PATH )
- filesystem access
  - read and write sensitive files
  - surprise symlinks
    - read root rsa key for root file read -> code exec
- file write
  - newline injection
  - with garbage to remove
    - exploit maximum line length of input files in dependent binaries to attempt to push garbage off buffer
    - formatting issues in config files like regular expressions
- wildcards turning into command parameters
- exec
- python scripts: everything from [got source code - analysis](../got-source-code.md#got-source-code---analysis)
- dependent libraries of scripts (ex: tar, zip -> overwrite files / zip slip)
- Ubuntu versions pre 19 -> sudo `$HOME` path is not changed ( specific to ubuntu )

` zet/20221003151209/README.md `

# Related

- [20221007044552](/zet/20221007044552/README.md) todo or to-try list

- [20221003151210](/zet/20221003151210/README.md) linux privilege escalation
- ~/kb/hacking/to-try-lists/privesc/linux.md

Tags:

    #to-try-list #hacking #privesc #linux 
