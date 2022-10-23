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
- scripts running git commands -> could execute hooks when script does actions
- insecure to use `#!/usr/bin/env bash` type shebangs + writable path
- python scripts: everything from [20221003151178](/zet/20221003151178/README.md) got source code - analysis
- dependent libraries of scripts (ex: tar, zip -> overwrite files / zip slip)
- Ubuntu versions pre 19 -> sudo `$HOME` path is not changed ( specific to ubuntu )

` zet/20221003151209/README.md `

# Related

- [20221003151240](/zet/20221003151240/README.md) Using touch to make files with strange names for exploiting scripts
- [20221018193528](/zet/20221018193528/README.md) bash shell builtin commands
- [20221018183943](/zet/20221018183943/README.md) shellcheck
- [20221006035818](/zet/20221006035818/README.md) rwxrob skilstak beginner boost videos
- [20221003150631](/zet/20221003150631/README.md) listen for pings with tcpdump
- [20221003150881](/zet/20221003150881/README.md) create symbolic link
- [20221003151178](/zet/20221003151178/README.md) got source code - analysis to try list
- [20221015004120](/zet/20221015004120/README.md) ippsec video opensource
- [20221014185600](/zet/20221014185600/README.md) kb file named kb/hacking/to-try-lists/privesc/linux.md
- [20221003150260](/zet/20221003150260/README.md) sperl and suidperl
- [20221013175128](/zet/20221013175128/README.md) preparing exploit payloads
- [20221003150426](/zet/20221003150426/README.md) zip slip evilarc.py
- [20221003150882](/zet/20221003150882/README.md) writing to and modifying setuid binaries
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221008005525](/zet/20221008005525/README.md) bash scripting pitfalls and anti-patterns
- [20221007044552](/zet/20221007044552/README.md) todo or to-try list
- [20221003151210](/zet/20221003151210/README.md) linux privilege escalation
- ~/kb/hacking/to-try-lists/privesc/linux.md

Tags:

    #to-try-list #hacking #privesc #linux 
