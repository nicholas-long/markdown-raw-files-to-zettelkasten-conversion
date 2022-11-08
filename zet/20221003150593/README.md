# generating enumeration wordlists exfiltrated passwd usernames to ssh key id_rsa fuzz list
```bash
awk -F: '{print $6 "/.ssh/id_rsa" }' passwd
```

` zet/20221003150593/README.md `

# Related

- [20221014185952](/zet/20221014185952/README.md) kb file named kb/hacking/commands/enumeration-util.md
- ~/kb/hacking/commands/enumeration-util.md

Tags:

    #command #hacking #enumeration 
