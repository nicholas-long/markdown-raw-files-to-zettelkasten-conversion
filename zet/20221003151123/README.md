# dos commands see running service processes
tasklist /SVC

```powershell
Get-WmiObject win32_service | Select-Object Name, State, PathName | Where-Object {$_.State -like 'Running'}
```

` zet/20221003151123/README.md `

# Related

- [20221014185655](/zet/20221014185655/README.md) kb file named kb/hacking/windows/dos-and-powershell-enumeration-quick.md
- [20221003151124](/zet/20221003151124/README.md) dos commands
- ~/kb/hacking/windows/dos-and-powershell-enumeration-quick.md

Tags:

    #hacking #windows #dos 
