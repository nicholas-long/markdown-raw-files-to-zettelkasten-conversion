# socat port forwarding with socat
Forward port 80 to 445
```bash
socat TCP-LISTEN:80,fork TCP:127.0.0.1:445
```

# References
- [20221003150115](/zet/20221003150115/README.md) socat
- ~/kb/networking/port-forwarding.md

Tags:
    #assorted #networking #port
