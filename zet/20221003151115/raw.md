## services sc

### enable service
set to auto start
sc config SVC_NAME start= auto

### set binary path
sc config SVC_NAME binpath= "c:\inetpub\shell.exe"

### start service
net start SVC_NAME

