## authenticated fuzzing parameter names
```bash
COOKIES="PHPSESSID=1234"
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/burp-parameter-names.txt -b "$COOKIES" --hc 404 "http://$IP/location.php?FUZZ=sensible_value"
```

