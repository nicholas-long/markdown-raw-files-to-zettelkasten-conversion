# make executable binary with input shellcode msfvenom
```bash
cat payload.bin | msfvenom -p - -f exe -a x64 --platform win -o output.exe
```

` zet/20221003150524/README.md `

# Related

- [20221014190010](/zet/20221014190010/README.md) kb file named kb/hacking/pwn/shellcode-to-executable.md
- ~/kb/hacking/pwn/shellcode-to-executable.md

Tags:

    #hacking #pwn #shellcode 
