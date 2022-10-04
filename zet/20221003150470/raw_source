## mount smb share as drive "letter"
```powershell
New-PSDrive -Name "temp" -PSProvider "FileSystem" -Root "\\192.168.1.69\temp"
# with PSCredential
$pass = ConvertTo-SecureString 'password123' -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential('.\use1', $pass)
New-PSDrive -Name "temp" -PSProvider "FileSystem" -Credential $cred -Root "\\192.168.1.69\temp"
```

