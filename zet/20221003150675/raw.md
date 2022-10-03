### with NTLM hashes instead of creds
```bash
bloodhound-python -c All -u user --hashes abcd123abcd123abcd123abcd123abcd:abcd123abcd123abcd123abcd123abcd -dc 'FQDNMachineName.domain.local' -d 'domain.local' -ns $IP
```

