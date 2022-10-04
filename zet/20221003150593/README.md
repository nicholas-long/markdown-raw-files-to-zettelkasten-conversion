# generating enumeration wordlists exfiltrated passwd usernames to ssh key id_rsa fuzz list
```bash
awk -F: '{print $6 "/.ssh/id_rsa" }' passwd
```

# Related

- [20221003150594](/zet/20221003150594/README.md) generating enumeration wordlists
- ~/kb/hacking/commands/enumeration-util.md

Tags:

    #command #hacking #enumeration 
