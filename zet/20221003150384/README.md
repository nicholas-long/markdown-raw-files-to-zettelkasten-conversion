# krbrelayx krbrelayx.py Kerberos relaying and Unconstrained delegation abuse
When no credentials are supplied, but at least one target is specified, krbrelayx will forward the Kerberos authentication to a matching target hostname, effectively relaying the authentication. How to get incoming Kerberos auth with a valid SPN is up to you, but you could use mitm6 for this.
In this mode, krbrelayx will either decrypt and dump incoming TGTs embedded in authentication with unconstrained delegation, or immediately use the TGTs to authenticate to a target service. This requires that credentials for an account with unconstrained delegation are specified.

` zet/20221003150384/README.md `

# Related

- [20221003150389](/zet/20221003150389/README.md) krbrelayx
- ~/kb/hacking/misc/important-repositories-tools.md

Tags:

    #hacking #repositories #important 
