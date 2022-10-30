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

` zet/20221003150107/README.md `

# Related

- [20221003150604](/zet/20221003150604/README.md) tunneling through chisel - socks
- [20221003150601](/zet/20221003150601/README.md) tunneling Forward specific port through chisel
- [20221020154329](/zet/20221020154329/README.md) port forwarding concept
- [20221014185459](/zet/20221014185459/README.md) kb file named kb/networking/port-forwarding.md
- [20221003150116](/zet/20221003150116/README.md) socat over proxy
- [20221003150455](/zet/20221003150455/README.md) ike-scan for ike IPsec VPNs
- [20221003150106](/zet/20221003150106/README.md) ssh port forwarding dynamic ( socks )
- ~/kb/networking/port-forwarding.md

Tags:

    #networking #port 
