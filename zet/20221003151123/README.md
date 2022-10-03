# dos commands see running service processes
tasklist /SVC

```powershell
Get-WmiObject win32_service | Select-Object Name, State, PathName | Where-Object {$_.State -like 'Running'}
```

# References
- [20221003151124](/zet/20221003151124/) dos commands
- ~/kb/hacking/windows/dos-and-powershell-enumeration-quick.md

Tags:
    #assorted

