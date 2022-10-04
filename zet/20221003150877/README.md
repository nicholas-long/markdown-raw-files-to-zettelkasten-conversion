# dirty cow privilege escalation working version build on attacker machine with statically linked binaries embedded
https://gist.github.com/KrE80r/42f8629577db95782d5e4f609f437a54

```bash
cp ~/kb/hacking/priv-esc/c0w.c .
gcc -pthread c0w.c  -o c0w -static
```
# References
- [20221003150878](/zet/20221003150878/README.md) dirty cow privilege escalation working version
- ~/kb/hacking/priv-esc/dirty-cow-no-gcc.md

Tags:
    #assorted
