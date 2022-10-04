# wfuzz dirbusting really really large directories wordlist
1273833 directory-list-2.3-big.txt
```bash
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/directory-list-2.3-big.txt --hc 404 http://$IP/FUZZ
```

# Related

- [20221003150659](/zet/20221003150659/README.md) wfuzz
- ~/kb/hacking/commands/wfuzz-commands.md

Tags:

    #assorted #command #hacking #wfuzz
