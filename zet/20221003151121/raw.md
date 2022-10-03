## service paths
https://www.ired.team/offensive-security/privilege-escalation/unquoted-service-paths
```dos
wmic service get name,displayname,pathname,startmode | findstr /i "auto"
wmic service get name,displayname,pathname,startmode | findstr /i "auto" | findstr /i /v """
wmic service get name,displayname,pathname,startmode | findstr /i "auto" | findstr /i /v "c:\windows\\" | findstr /i /v """
```

