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

- [20221014185530](/zet/20221014185530/README.md) kb file named kb/hacking/tricks/scan-firewall-reverse-ports.md
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003150648](/zet/20221003150648/README.md) nmap
- [20221003150117](/zet/20221003150117/README.md) OSI networking model
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221003151210](/zet/20221003151210/README.md) linux privilege escalation
- [20221003150904](/zet/20221003150904/README.md) linux enumeration quick commands exfiltrate files bash pipe tcp
- [20221003150894](/zet/20221003150894/README.md) linux enumeration quick commands file transfer with cat herefiles

Tags:

    #trick #networking #hacking
