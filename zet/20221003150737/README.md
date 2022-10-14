# feroxbuster dirbusting common with arguments
add slash with `-f`.
collect links with `-e`.
add words to wordlist with `-g`
```bash
feroxbuster --url http://$IP/ -w /usr/share/seclists/Discovery/Web-Content/common.txt
feroxbuster --url http://$IP/ -w /usr/share/seclists/Discovery/Web-Content/common.txt -f
feroxbuster --url http://$IP/ -w /usr/share/seclists/Discovery/Web-Content/common.txt -g -e -f
```

` zet/20221003150737/README.md `

# Related

- [20221014185909](/zet/20221014185909/README.md) kb file named kb/hacking/commands/feroxbuster-command.md
- [20221003150738](/zet/20221003150738/README.md) feroxbuster dirbusting
- ~/kb/hacking/commands/feroxbuster-command.md

Tags:

    #command #hacking #feroxbuster 
