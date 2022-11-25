# iptables rules forward all traffic between two interfaces
```bash
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -A FORWARD -i wlan1 -o wlan0 -j ACCEPT
iptables -A FORWARD -i wlan0 -o wlan1 -m state --state ESTABLISHED,RELATED \
         -j ACCEPT
iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
```

` zet/20221003150196/README.md `

# Related

- [20221014190132](/zet/20221014190132/README.md) kb file named kb/linux/iptables.md
- [20221003150197](/zet/20221003150197/README.md) iptables rules
- ~/kb/linux/iptables.md

Tags:

    #DEL #linux #iptables 
