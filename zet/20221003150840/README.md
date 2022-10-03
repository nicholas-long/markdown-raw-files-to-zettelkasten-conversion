# gobuster vhost enumeration
```bash
gobuster vhost -u $URL -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt -t 50
gobuster vhost -u $URL -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-20000.txt -t 50
gobuster vhost -u $URL -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-110000.txt -t 50
```

# References
- [20221003150847](/zet/20221003150847/) gobuster
- ~/kb/hacking/commands/gobuster.md

Tags:
    #assorted

