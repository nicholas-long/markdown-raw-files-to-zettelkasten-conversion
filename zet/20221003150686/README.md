# wpscan brute force users file and password list
```bash
wpscan --url $URL -U users -P /usr/share/seclists/Passwords/Leaked-Databases/rockyou-50.txt
wpscan --url $URL -U users -P /usr/share/wordlists/rockyou.txt
```

# References
- [20221003150694](/zet/20221003150694/README.md) wpscan
- ~/kb/hacking/commands/wpscan-command.md

Tags:
    #assorted
