# wfuzz host header pollution
```bash
wfuzz -c -u $URL -w /usr/share/seclists/Discovery/DNS/namelist.txt -H "Host: FUZZ" --hc 403
wfuzz -c -u $URL -w /usr/share/seclists/Discovery/DNS/fierce-hostlist.txt -H "Host: FUZZ" --hc 403
```

# Related
- [20221003150659](/zet/20221003150659/README.md) wfuzz
- ~/kb/hacking/commands/wfuzz-commands.md

Tags:
    #assorted #command #hacking #wfuzz
