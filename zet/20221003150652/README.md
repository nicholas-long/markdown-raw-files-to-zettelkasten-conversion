# wfuzz host header pollution
```bash
wfuzz -c -u $URL -w /usr/share/seclists/Discovery/DNS/namelist.txt -H "Host: FUZZ" --hc 403
wfuzz -c -u $URL -w /usr/share/seclists/Discovery/DNS/fierce-hostlist.txt -H "Host: FUZZ" --hc 403
```

` zet/20221003150652/README.md `

# Related

- [20221014185935](/zet/20221014185935/README.md) kb file named kb/hacking/commands/wfuzz-commands.md
- [20221003150659](/zet/20221003150659/README.md) wfuzz
- ~/kb/hacking/commands/wfuzz-commands.md

Tags:

    #command #hacking #wfuzz 
