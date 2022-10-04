# hydra brute force HTTP basic authentication also works for NTLM
```bash
hydra $IP http-get -L users  -P /usr/share/seclists/Passwords/Leaked-Databases/rockyou-50.txt /phpmyadmin
```

# Related

- [20221003150849](/zet/20221003150849/README.md) hydra brute force HTTP basic authentication
- ~/kb/hacking/commands/hydra-http-auth.md

Tags:

    #command #hacking #hydra 
