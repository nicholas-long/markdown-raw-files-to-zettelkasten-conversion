# feroxbuster files, backups, and extensions small words to filenames plus extensions ignore 403 
```bash
feroxbuster --url http://$IP/ -B -g -w /usr/share/seclists/Discovery/Web-Content/raft-small-words.txt -x php,txt,xml,json,config -C 403 -C 404 -e
feroxbuster --url http://$IP/ -B -g -w /usr/share/seclists/Discovery/Web-Content/raft-small-words.txt -x txt,log -C 403 -C 404 -e
```

` zet/20221003150732/README.md `

# Related

- [20221014185909](/zet/20221014185909/README.md) kb file named kb/hacking/commands/feroxbuster-command.md
- [20221003150735](/zet/20221003150735/README.md) feroxbuster files, backups, and extensions
- ~/kb/hacking/commands/feroxbuster-command.md

Tags:

    #command #hacking #feroxbuster 
