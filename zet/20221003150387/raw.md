## addspn.py This tool can add/remove/modify Service Principal Names on accounts in AD over LDAP.
## dnstool.py Add/modify/delete Active Directory Integrated DNS records via LDAP.
## printerbug.py Simple tool to trigger SpoolService bug via RPC backconnect. Similar to dementor.py
https://github.com/dirkjanm/krbrelayx
## krbrelayx.py Kerberos relaying and Unconstrained delegation abuse
When no credentials are supplied, but at least one target is specified, krbrelayx will forward the Kerberos authentication to a matching target hostname, effectively relaying the authentication. How to get incoming Kerberos auth with a valid SPN is up to you, but you could use mitm6 for this.
In this mode, krbrelayx will either decrypt and dump incoming TGTs embedded in authentication with unconstrained delegation, or immediately use the TGTs to authenticate to a target service. This requires that credentials for an account with unconstrained delegation are specified.

