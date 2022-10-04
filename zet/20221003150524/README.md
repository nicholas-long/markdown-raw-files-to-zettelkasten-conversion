# make executable binary with input shellcode msfvenom
```bash
cat payload.bin | msfvenom -p - -f exe -a x64 --platform win -o output.exe
```

# References
- [20221003150525](/zet/20221003150525/README.md) make executable binary with input shellcode
- ~/kb/hacking/pwn/shellcode-to-executable.md

Tags:
    #assorted #hacking #pwn #shellcode
