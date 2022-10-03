## test combine valid user and password combinations
```
--no-bruteforce           No spray when using file for username and password (user1 => password1, user2 => password2
--continue-on-success     continues authentication attempts even after successes
```

```bash
crackmapexec smb $IP -u valid_users -p valid_passwords --no-bruteforce --continue-on-success
crackmapexec winrm $IP -u valid_users -p valid_passwords --no-bruteforce --continue-on-success
```

