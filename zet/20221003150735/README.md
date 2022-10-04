# feroxbuster files, backups, and extensions
the `--collect-extensions` option will add extensions from 403 errors as well and could get messy in combination other collection options.
using the default wordlist with `--collect-extensions` might not be adequate to find files - add known extensions.
```bash
feroxbuster --url http://$IP/ -B -E -g -e
# html and php extensions
feroxbuster --url http://$IP/ -B -E -g -x php,html -e
# with files wordlist
feroxbuster --url http://$IP/ -B -E -g -w /usr/share/seclists/Discovery/Web-Content/raft-medium-files.txt -e
feroxbuster --url http://$IP/ -B -g -w /usr/share/seclists/Discovery/Web-Content/raft-medium-files.txt -e
```

# Related

- [20221003150739](/zet/20221003150739/README.md) feroxbuster
- [20221003150734](/zet/20221003150734/README.md) feroxbuster files, backups, and extensions fix recursion loop
- [20221003150733](/zet/20221003150733/README.md) feroxbuster files, backups, and extensions backups and extensions files command
- [20221003150732](/zet/20221003150732/README.md) feroxbuster files, backups, and extensions small words to filenames plus extensions ignore 403 
- [20221003150731](/zet/20221003150731/README.md) feroxbuster files, backups, and extensions dynamic collection settings
- ~/kb/hacking/commands/feroxbuster-command.md

Tags:

    #command #hacking #feroxbuster 
