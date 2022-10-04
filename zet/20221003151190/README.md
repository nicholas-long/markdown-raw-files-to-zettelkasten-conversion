# HTTP BUSTING directory busting to try list
fuzz files found for backups https://github.com/olemoudi/backup-fuzzer
~/kb/wordlists/custom.dirbusting
for each path
- /
  - gobuster common
  - gobuster custom.dirbusting list
  - feroxbuster with extensions ( medium dirs list ) - does some directories and files
  - files
    - gobuster with extensions -> raft-small-words and discover backups `-d` option
    - gobuster raft large files
    - wfuzz difference - look at status and content length
    - view source of files found
  - directories
    - gobuster raft medium directories
    - gobuster raft large directories
    - gobuster directory list 2.3 medium
    - wfuzz difference - look at status and content length
    - gobuster dir list big
  - db backups /usr/share/seclists/Discovery/Web-Content/Common-DB-Backups.txt
  - cewl wordlist

# References
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:
    #assorted #to-try-list #hacking #HTTP
