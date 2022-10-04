# wfuzz authenticated fuzzing parameter names
```bash
COOKIES="PHPSESSID=1234"
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/burp-parameter-names.txt -b "$COOKIES" --hc 404 "http://$IP/location.php?FUZZ=sensible_value"
```

# Related
- [20221003150659](/zet/20221003150659/README.md) wfuzz
- ~/kb/hacking/commands/wfuzz-commands.md

Tags:
    #assorted #command #hacking #wfuzz
