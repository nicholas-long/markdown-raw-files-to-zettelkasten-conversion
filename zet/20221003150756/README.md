# MSFVENOM tricks make executable binary with input shellcode
```bash
cat payload.bin | msfvenom -p - -f exe -a x64 --platform win -o output.exe
```

` zet/20221003150756/README.md `

# Related

- [20221014185901](/zet/20221014185901/README.md) kb file named kb/hacking/commands/msfvenom-commands.md
- [20221003150757](/zet/20221003150757/README.md) MSFVENOM tricks
- ~/kb/hacking/commands/msfvenom-commands.md

Tags:

    #command #hacking #msfvenom 
