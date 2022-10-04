# routing using a linux box iptables rules forward all traffic between two interfaces
```bash
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -A FORWARD -i tun0 -o wlan0 -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -i wlan0 -o tun0 -j ACCEPT
# from stackoverflow
iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
# alternative: check source address is eth0 #ippsec video sharp
iptables -t nat -A POSTROUTING -s 192.168.1.0/24 -o tun0 -j MASQUERADE
```

# Related
- [20221003150120](/zet/20221003150120/README.md) routing using a linux box iptables rules
- ~/kb/linux/routing.md

Tags:
    #assorted #linux #routing
