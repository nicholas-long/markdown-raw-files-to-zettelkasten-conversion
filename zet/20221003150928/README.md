# C setuid suid backdoor exploit program to execute shell commands with system
```bash
cp /usr/share/seclists/Miscellaneous/source-code/c-linux/root-shell.c .
gcc -static -o root-shell root-shell.c
```

# References
- [20221003150929](/zet/20221003150929/README.md) C setuid suid backdoor exploit
- ~/kb/hacking/priv-esc/c-shells-and-setuid.md

Tags:
    #assorted #hacking #privesc #c
