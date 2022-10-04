# ssh port forwarding
send ssh control sequence on new line `~C`.
client machine's port (ex: 8081) comes first.
```
-L 8081:127.0.0.1:8080
```
or include port forward when running from command line
```bash
ssh -L 8081:127.0.0.1:8080 user@$IP
```

# References
- [20221003150106](/zet/20221003150106/README.md) ssh port forwarding dynamic ( socks )
- ~/kb/networking/port-forwarding.md

Tags:
    #assorted
