# routing using a linux box enable ip forwarding permanently
edit `/etc/sysctl.conf`
Add one of the following lines to the bottom of the file, depending on whether you’d like Linux IP forwarding to be off or on, respectively. 
Then, save your changes to this file.
The setting will be permanent across reboots.
The net.ipv4.ip_forward setting controls whether IP forwarding is turned on or off for IPv4.
```
net.ipv4.ip_forward = 1
```
After editing the file, you can run the following command to make the changes take effect right away.
```
# sysctl -p
```

` zet/20221003150123/README.md `

# Related

- [20221014190210](/zet/20221014190210/README.md) kb file named kb/linux/routing.md
- [20221003150125](/zet/20221003150125/README.md) routing using a linux box enable ip forwarding
- ~/kb/linux/routing.md

Tags:

    #linux #routing 
