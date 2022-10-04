# MSFVENOM tricks make executable binary with input shellcode
```bash
cat payload.bin | msfvenom -p - -f exe -a x64 --platform win -o output.exe
```

# Related
- [20221003150757](/zet/20221003150757/README.md) MSFVENOM tricks
- ~/kb/hacking/commands/msfvenom-commands.md

Tags:
    #assorted #command #hacking #msfvenom
