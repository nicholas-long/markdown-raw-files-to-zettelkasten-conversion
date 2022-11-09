# crackmapexec kerberos authentication with ticket environment variable

- include ticket in environment variable `KRB5CCNAME`
- the hostname is very important.
```bash
export KRB5CCNAME=$(pwd)/User.ccache
crackmapexec smb fqdn.domain.local -u User --kerberos
```

` zet/20221003150749/README.md `

# Related

- [20221019150132](/zet/20221019150132/README.md) kerberos AD commands
- [20221014185905](/zet/20221014185905/README.md) kb file named kb/hacking/commands/windows-active-directory-kerberos-commands.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150425](/zet/20221003150425/README.md) kerberos attack on windows host
- ~/kb/hacking/commands/windows-active-directory-kerberos-commands.md
- [20221003151172](/zet/20221003151172/README.md) active directory domain to try list

Tags:

    #command #hacking #windows #ad
