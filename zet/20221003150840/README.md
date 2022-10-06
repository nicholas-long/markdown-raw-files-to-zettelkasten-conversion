# gobuster vhost enumeration
```bash
gobuster vhost -u $URL -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt -t 50
gobuster vhost -u $URL -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-20000.txt -t 50
gobuster vhost -u $URL -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-110000.txt -t 50
```

` zet/20221003150840/README.md `

# Related

- [20221003150847](/zet/20221003150847/README.md) gobuster
- ~/kb/hacking/commands/gobuster.md

Tags:

    #command #hacking #gobuster 
