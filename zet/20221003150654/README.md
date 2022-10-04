# wfuzz fuzzing parameter names
```bash
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/burp-parameter-names.txt --hc 404 "http://$IP/location.php?FUZZ=sensible_value"
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/api/objects.txt --hc 404 "http://$IP/location.php?FUZZ=sensible_value"
```

# References
- [20221003150659](/zet/20221003150659/README.md) wfuzz
- ~/kb/hacking/commands/wfuzz-commands.md

Tags:
    #assorted
