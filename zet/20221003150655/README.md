# wfuzz fuzzing subdomains
```bash
wfuzz -c -H "Host: FUZZ.$DOMAIN" -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-20000.txt -u http://$IP/
```

` zet/20221003150655/README.md `

# Related

- [20221003150659](/zet/20221003150659/README.md) wfuzz
- ~/kb/hacking/commands/wfuzz-commands.md

Tags:

    #command #hacking #wfuzz 
