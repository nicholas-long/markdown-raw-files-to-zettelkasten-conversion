# watch failed ssh login attempts as a live stream
```bash
tail -f /var/log/auth.log | awk '/Invalid user/ { print $8, $10 }'
```

` zet/20221003151322/README.md `

# Related

- [20221013190051](/zet/20221013190051/README.md) blue team
- [20221013035616](/zet/20221013035616/README.md) fun
- [20221003151174](/zet/20221003151174/README.md) SSH
- [20221003151155](/zet/20221003151155/README.md) linux hardening

Tags:

    
