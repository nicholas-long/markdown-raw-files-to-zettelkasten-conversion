# crackmapexec kerberos authentication with ticket include ticket environment variable
the hostname is very important.
```bash
export KRB5CCNAME=$(pwd)/User.ccache
crackmapexec smb fqdn.domain.local -u User --kerberos
```

` zet/20221003150749/README.md `

# Related

- [20221014185905](/zet/20221014185905/README.md) kb file named kb/hacking/commands/windows-active-directory-kerberos-commands.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150750](/zet/20221003150750/README.md) crackmapexec kerberos authentication with ticket
- ~/kb/hacking/commands/windows-active-directory-kerberos-commands.md

Tags:

    #command #hacking #windows #windows 
