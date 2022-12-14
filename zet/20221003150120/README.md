# routing using a linux box iptables rules

- keep this card for details about example iptables rules
- forward all traffic between two interfaces
```bash
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -A FORWARD -i tun0 -o wlan0 -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -i wlan0 -o tun0 -j ACCEPT
# from stackoverflow
iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
# alternative: check source address is eth0 #ippsec video sharp
iptables -t nat -A POSTROUTING -s 192.168.1.0/24 -o tun0 -j MASQUERADE
```
- another example forwarding traffic between `wlan0` and `wlan1`
```bash
echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -A FORWARD -i wlan1 -o wlan0 -j ACCEPT
iptables -A FORWARD -i wlan0 -o wlan1 -m state --state ESTABLISHED,RELATED \
         -j ACCEPT
iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE
```


` zet/20221003150120/README.md `

# Related

- [20221014190210](/zet/20221014190210/README.md) kb file named kb/linux/routing.md
- [20221003150126](/zet/20221003150126/README.md) routing using a linux box
- ~/kb/linux/routing.md

Tags:

    #linux #routing #iptables #info #lan #networking
