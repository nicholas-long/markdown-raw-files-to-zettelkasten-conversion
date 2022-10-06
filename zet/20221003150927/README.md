# C setuid suid backdoor exploit write setuid bit to binary with SO shared module object
/usr/share/seclists/Miscellaneous/source-code/c-linux/drop-shell.c
```bash
cp /usr/share/seclists/Miscellaneous/source-code/c-linux/drop-shell.c .
gcc -fPIC -shared -o drop-shell.so drop-shell.c
```

` zet/20221003150927/README.md `

# Related

- [20221003150929](/zet/20221003150929/README.md) C setuid suid backdoor exploit
- ~/kb/hacking/priv-esc/c-shells-and-setuid.md

Tags:

    #hacking #privesc #c 
