# dos commands service paths
https://www.ired.team/offensive-security/privilege-escalation/unquoted-service-paths
```dos
wmic service get name,displayname,pathname,startmode | findstr /i "auto"
wmic service get name,displayname,pathname,startmode | findstr /i "auto" | findstr /i /v """
wmic service get name,displayname,pathname,startmode | findstr /i "auto" | findstr /i /v "c:\windows\\" | findstr /i /v """
```

` zet/20221003151121/README.md `

# Related

- [20221014185655](/zet/20221014185655/README.md) kb file named kb/hacking/windows/dos-and-powershell-enumeration-quick.md
- [20221008213254](/zet/20221008213254/README.md) file path
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003151124](/zet/20221003151124/README.md) dos commands
- ~/kb/hacking/windows/dos-and-powershell-enumeration-quick.md

Tags:

    #hacking #windows #dos 
