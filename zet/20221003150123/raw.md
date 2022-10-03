### permanently
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

