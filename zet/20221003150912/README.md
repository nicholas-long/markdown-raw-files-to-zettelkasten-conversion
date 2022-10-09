# linux enumeration quick commands find files modified between specific dates (with reference files)
```bash
touch --date "2007-01-01" /tmp/start
touch --date "2008-01-01" /tmp/end
find /data/images -type f -newer /tmp/start -not -newer /tmp/end 2>/dev/null
```

` zet/20221003150912/README.md `

# Related

- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150920](/zet/20221003150920/README.md) linux enumeration quick commands
- ~/kb/hacking/priv-esc/enumeration-quick-commands.md

Tags:

    #command #hacking #privesc #enumeration 
