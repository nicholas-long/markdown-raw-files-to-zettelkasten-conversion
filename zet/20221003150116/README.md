# Socat over proxy
Set up a local listener on port 5678 and connect to `$IP` `$PORT` using socks proxy `localhost:9050`
```bash
socat TCP4-LISTEN:5678,fork SOCKS4A:localhost:$IP:$PORT,socksport=9050
```

` zet/20221003150116/README.md `

# Related

- [20221003151161](/zet/20221003151161/README.md) pivoting guide
- [20221003150604](/zet/20221003150604/README.md) tunneling through chisel - socks
- [20221003150107](/zet/20221003150107/README.md) ssh port forwarding

Tags:

    
