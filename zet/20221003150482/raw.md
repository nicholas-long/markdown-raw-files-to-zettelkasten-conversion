# general enumeration

## get list of filepaths recursively
```powershell
gci -recurse . | select fullname
```

## get processes
```powershell
Get-Process
```

## what commands are available
```powershell
Get-Command
```

## Active Directory Certificate Services
### is AD CS enabled
```powershell
Get-WindowsFeature *ad-certificate*, *adcs*
```
