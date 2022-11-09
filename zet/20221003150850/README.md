# dns commands update / change / delete DNS records for subdomain

- with nsupdate `86400` seconds = one day
```bash
nsupdate
server 1.2.3.4
update delete subdomain.example.com
send
update add subdomain.example.com 86400 A 10.10.69.69
send
quit
```

` zet/20221003150850/README.md `

# Related

- [20221014185831](/zet/20221014185831/README.md) kb file named kb/hacking/commands/dns-commands.md
- ~/kb/hacking/commands/dns-commands.md
- [20221003150134](/zet/20221003150134/README.md) DNS commands

Tags:

    #command #hacking #dns 
