# linux enumeration quick commands find files that have millisecond microsecond nanosecond times not common install
files from package managers usually have all 0 for microsecond time in the file system, so files with microsecond times were touched by programs.
full iso time can be sorted alphabetically, so pipe to sort to sort the results.
```bash
find /etc/ -type f -printf "%T+ %p\n" 2>/dev/null | grep -v 0000000000
find /etc/ -type f -printf "%T+ %p\n" 2>/dev/null | grep -v 0000000000 | sort
```

` zet/20221003150903/README.md `

# Related

- [20221003150920](/zet/20221003150920/README.md) linux enumeration quick commands
- ~/kb/hacking/priv-esc/enumeration-quick-commands.md

Tags:

    #command #hacking #privesc #enumeration 
