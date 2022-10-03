# bloodhound run python version in docker with NTLM hashes instead of creds
```bash
bloodhound-python -c All -u user --hashes abcd123abcd123abcd123abcd123abcd:abcd123abcd123abcd123abcd123abcd -dc 'FQDNMachineName.domain.local' -d 'domain.local' -ns $IP
```

# References
- [20221003150676](/zet/20221003150676/) bloodhound run python version in docker
- ~/kb/hacking/commands/bloodhound.md

Tags:
    #assorted

