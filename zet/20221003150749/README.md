# crackmapexec kerberos authentication with ticket include ticket environment variable
the hostname is very important.
```bash
export KRB5CCNAME=$(pwd)/User.ccache
crackmapexec smb fqdn.domain.local -u User --kerberos
```

# References
- [20221003150750](/zet/20221003150750/) crackmapexec kerberos authentication with ticket
- ~/kb/hacking/commands/windows-active-directory-kerberos-commands.md

Tags:
    #assorted

