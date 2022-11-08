# krbrelayx Kerberos relaying and unconstrained delegation abuse toolkit

- addspn.py This tool can add/remove/modify Service Principal Names on accounts in AD over LDAP.
- dnstool.py Add/modify/delete Active Directory Integrated DNS records via LDAP.
- printerbug.py Simple tool to trigger SpoolService bug via RPC backconnect. Similar to dementor.py
- krbrelayx.py Kerberos relaying and Unconstrained delegation abuse

- When no credentials are supplied, but at least one target is specified, krbrelayx will forward the Kerberos authentication to a matching target hostname, effectively relaying the authentication. How to get incoming Kerberos auth with a valid SPN is up to you, but you could use mitm6 for this.
- In this mode, krbrelayx will either decrypt and dump incoming TGTs embedded in authentication with unconstrained delegation, or immediately use the TGTs to authenticate to a target service. This requires that credentials for an account with unconstrained delegation are specified.

` zet/20221003150388/README.md `

# Related

- https://github.com/dirkjanm/krbrelayx
- [20221014190047](/zet/20221014190047/README.md) kb file named kb/hacking/misc/important-repositories-tools.md
- ~/kb/hacking/misc/important-repositories-tools.md

Tags:

    #hacking #repositories #important
