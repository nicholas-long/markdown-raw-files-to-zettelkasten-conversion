# crackmapexec cme commands test combine valid user and password combinations
```
--no-bruteforce           No spray when using file for username and password (user1 => password1, user2 => password2
--continue-on-success     continues authentication attempts even after successes
```

```bash
crackmapexec smb $IP -u valid_users -p valid_passwords --no-bruteforce --continue-on-success
crackmapexec winrm $IP -u valid_users -p valid_passwords --no-bruteforce --continue-on-success
```

` zet/20221003150669/README.md `

# Related

- [20221014185929](/zet/20221014185929/README.md) kb file named kb/hacking/commands/crackmapexec-commands.md
- [20221003150673](/zet/20221003150673/README.md) crackmapexec cme commands
- ~/kb/hacking/commands/crackmapexec-commands.md

Tags:

    #command #hacking #crackmapexec 
