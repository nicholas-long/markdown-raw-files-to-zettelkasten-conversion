# dirty cow privilege escalation working version build on attacker machine with statically linked binaries embedded
https://gist.github.com/KrE80r/42f8629577db95782d5e4f609f437a54

```bash
cp ~/kb/hacking/priv-esc/c0w.c .
gcc -pthread c0w.c  -o c0w -static
```
` zet/20221003150877/README.md `

# Related

- [20221003150879](/zet/20221003150879/README.md) dirty cow privilege escalation
- [20221014185819](/zet/20221014185819/README.md) kb file named kb/hacking/priv-esc/dirty-cow-no-gcc.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150878](/zet/20221003150878/README.md) dirty cow privilege escalation working version
- ~/kb/hacking/priv-esc/dirty-cow-no-gcc.md

Tags:

    #hacking #privesc #dirty 
