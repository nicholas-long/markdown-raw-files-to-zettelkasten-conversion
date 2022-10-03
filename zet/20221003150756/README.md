# MSFVENOM tricks make executable binary with input shellcode
```bash
cat payload.bin | msfvenom -p - -f exe -a x64 --platform win -o output.exe
```

# References
- [20221003150757](/zet/20221003150757/) MSFVENOM tricks
- ~/kb/hacking/commands/msfvenom-commands.md

Tags:
    #assorted

