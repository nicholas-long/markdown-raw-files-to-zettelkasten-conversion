# dns commands update / change / delete DNS records for subdomain with nsupdate 86400 seconds = one day
```bash
nsupdate
server 1.2.3.4
update delete subdomain.example.com
send
update add subdomain.example.com 86400 A 10.10.69.69
send
quit
```

# References
- [20221003150851](/zet/20221003150851/README.md) dns commands update / change / delete DNS records for subdomain with nsupdate
- ~/kb/hacking/commands/dns-commands.md

Tags:
    #assorted #command #hacking #dns
