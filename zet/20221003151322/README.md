# watch failed ssh login attempts as a live stream
```bash
tail -f /var/log/auth.log | awk '/Invalid user/ { print $8, $10 }'
```

` zet/20221003151322/README.md `

# Related


Tags:

    
