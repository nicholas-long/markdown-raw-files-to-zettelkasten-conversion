## with tcpdump
### log data to pcap file
```bash
sudo tcpdump -i tun0 -w $FILE
```

### watch traffic
#### print IP and port
```bash
sudo tcpdump -n -i tun0
```

#### print packet data contents
```bash
sudo tcpdump -A -n -i tun0
```

