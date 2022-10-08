# dos commands service paths
https://www.ired.team/offensive-security/privilege-escalation/unquoted-service-paths
```dos
wmic service get name,displayname,pathname,startmode | findstr /i "auto"
wmic service get name,displayname,pathname,startmode | findstr /i "auto" | findstr /i /v """
wmic service get name,displayname,pathname,startmode | findstr /i "auto" | findstr /i /v "c:\windows\\" | findstr /i /v """
```

` zet/20221003151121/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes node
- [20221003151124](/zet/20221003151124/README.md) dos commands
- ~/kb/hacking/windows/dos-and-powershell-enumeration-quick.md

Tags:

    #hacking #windows #dos 
