# powershell tricks browse and edit registry set registry values
```powershell
Set-ItemProperty -Path "HKLM:\Software\ContosoCompany" -Name "NoOfEmployees" -Value 823
Get-ItemProperty -Path "HKLM:\Software\ContosoCompany"
```

` zet/20221003150468/README.md `

# Related

- [20221003150469](/zet/20221003150469/README.md) powershell tricks browse and edit registry
- ~/kb/hacking/powershell/powershell-tricks.md

Tags:

    #hacking #trick #powershell 
