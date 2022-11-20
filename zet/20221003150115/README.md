# socat

- Forward port 80 to 445
```bash
socat TCP-LISTEN:80,fork TCP:127.0.0.1:445
```

- execute program with bind shell example
```bash
socat TCP4-LISTEN:8081,fork exec:/bin/sh
```

- listen, fork, and print to stdout
```bash
socat TCP-LISTEN:1234,fork stdout
```

` zet/20221003150115/README.md `

# Related

- [20221020154329](/zet/20221020154329/README.md) port forwarding concept
- [20221003150114](/zet/20221003150114/README.md) socat port forwarding with socat
- [20221003150113](/zet/20221003150113/README.md) socat execute program
- [20221003150111](/zet/20221003150111/README.md) socat listen fork print to stdout
- [20221014185459](/zet/20221014185459/README.md) kb file named kb/networking/port-forwarding.md
- ~/kb/networking/port-forwarding.md

Tags:

    #networking #port #program #util #pivot
