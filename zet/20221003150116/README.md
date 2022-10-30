# socat over proxy

- set up a local listener on port 5678
- connect to `$IP` `$PORT` using
- socks proxy `localhost:9050`
```bash
socat TCP4-LISTEN:5678,fork SOCKS4A:localhost:$IP:$PORT,socksport=9050
```

` zet/20221003150116/README.md `

# Related

- [20221020154329](/zet/20221020154329/README.md) port forwarding concept
- [20221014185458](/zet/20221014185458/README.md) kb file named kb/networking/socat-proxy.md
- [20221003151161](/zet/20221003151161/README.md) pivoting guide
- [20221003150604](/zet/20221003150604/README.md) tunneling through chisel - socks
- [20221003150107](/zet/20221003150107/README.md) ssh port forwarding

Tags:

    #hacking #tcp #networking #proxy
