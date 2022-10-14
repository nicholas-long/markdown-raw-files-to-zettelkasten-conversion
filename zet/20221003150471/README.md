# powershell tricks run powershell commands as another user on remote machine with impersonated token copy and run file over session
```powershell
Copy-Item "c:\path\to\file.exe" -Destination "C:\users\public\" -ToSession $sess
Invoke-Command -Session $sess -ScriptBlock { "C:\users\public\file.exe"  }
```

` zet/20221003150471/README.md `

# Related

- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221014190039](/zet/20221014190039/README.md) kb file named kb/hacking/powershell/powershell-tricks.md
- [20221003150472](/zet/20221003150472/README.md) powershell tricks run powershell commands as another user on remote machine with impersonated token
- ~/kb/hacking/powershell/powershell-tricks.md

Tags:

    #hacking #trick #powershell 
