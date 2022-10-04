# powershell tricks run powershell commands as another user on remote machine with impersonated token copy and run file over session
```powershell
Copy-Item "c:\path\to\file.exe" -Destination "C:\users\public\" -ToSession $sess
Invoke-Command -Session $sess -ScriptBlock { "C:\users\public\file.exe"  }
```

# References
- [20221003150472](/zet/20221003150472/README.md) powershell tricks run powershell commands as another user on remote machine with impersonated token
- ~/kb/hacking/powershell/powershell-tricks.md

Tags:
    #assorted
