## fuzzing parameter names
```bash
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/burp-parameter-names.txt --hc 404 "http://$IP/location.php?FUZZ=sensible_value"
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/api/objects.txt --hc 404 "http://$IP/location.php?FUZZ=sensible_value"
```

