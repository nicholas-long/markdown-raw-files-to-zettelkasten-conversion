#### copy and run file over session
```powershell
Copy-Item "c:\path\to\file.exe" -Destination "C:\users\public\" -ToSession $sess
Invoke-Command -Session $sess -ScriptBlock { "C:\users\public\file.exe"  }
```

