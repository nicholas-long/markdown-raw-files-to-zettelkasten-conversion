# routing using a linux box

- enable ip forwarding [20221003150125](/zet/20221003150125/README.md) routing using a linux box enable ip forwarding
  - temporarily
    ```bash
    echo 1 > /proc/sys/net/ipv4/ip_forward
    ```

  - permanently
    - edit `/etc/sysctl.conf`
    - Add one of the following lines to the bottom of the file, depending on whether you’d like Linux IP forwarding to be off or on, respectively. Then, save your changes to this file.
    - The setting will be permanent across reboots.
    - The `net.ipv4.ip_forward` setting controls whether IP forwarding is turned on or off for IPv4.
    ```
    net.ipv4.ip_forward = 1
    ```
    After editing the file, you can run the following command to make the changes take effect right away.
    ```
    sysctl -p
    ```

- add router to routes on hosts
  - use `route` command on linux and windows - similar on both?
  - [20221003150121](/zet/20221003150121/README.md) add route on windows

- create iptables rule to forward between 2 interfaces [20221003150120](/zet/20221003150120/README.md) iptables rules
  ```bash
  echo 1 > /proc/sys/net/ipv4/ip_forward
  iptables -A FORWARD -i tun0 -o wlan0 -m state --state ESTABLISHED,RELATED -j ACCEPT
  iptables -A FORWARD -i wlan0 -o tun0 -j ACCEPT
  # from stackoverflow
  iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
  # alternative: check source address is eth0 #ippsec video sharp
  iptables -t nat -A POSTROUTING -s 192.168.1.0/24 -o tun0 -j MASQUERADE
  ```

` zet/20221003150126/README.md `

# Related

- [20221003150125](/zet/20221003150125/README.md) routing using a linux box enable ip forwarding
- [20221003150122](/zet/20221003150122/README.md) routing using a linux box add router to routes on hosts
- [20221003150120](/zet/20221003150120/README.md) routing using a linux box iptables rules
- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221003150117](/zet/20221003150117/README.md) OSI networking model
- [20221014190210](/zet/20221014190210/README.md) kb file named kb/linux/routing.md
- ~/kb/linux/routing.md
- [20221003150119](/zet/20221003150119/README.md) routing using a linux box iptables rules forward all traffic between two interfaces
- [20221003150123](/zet/20221003150123/README.md) routing using a linux box enable ip forwarding permanently
- [20221003150124](/zet/20221003150124/README.md) routing using a linux box enable ip forwarding temporarily

Tags:

    #linux #routing #networking #pivot #lan
