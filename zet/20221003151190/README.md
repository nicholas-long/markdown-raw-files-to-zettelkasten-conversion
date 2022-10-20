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

` zet/20221003151190/README.md `

# Related

- [20221003151237](/zet/20221003151237/README.md) wfuzz identify files containing version info like README and changelog
- [20221003151192](/zet/20221003151192/README.md) HTTP to try list
- [20221003150738](/zet/20221003150738/README.md) feroxbuster dirbusting
- [20221003150739](/zet/20221003150739/README.md) feroxbuster
- [20221003151175](/zet/20221003151175/README.md) EVERYTHING - common to try list
- [20221014185619](/zet/20221014185619/README.md) kb file named kb/hacking/to-try-lists/HTTP.md
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221007044552](/zet/20221007044552/README.md) todo or to-try list
- [20221006215135](/zet/20221006215135/README.md) siren
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:

    #to-try-list #hacking #http 
