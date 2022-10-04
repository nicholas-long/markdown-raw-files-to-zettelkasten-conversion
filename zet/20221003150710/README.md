# packet capture capture packets with tcpdump over ssh connection and pipe directly to wireshark
run tcpdump as an ssh command and pipe to stdout.
pipe into wireshark through stdin. wireshark interface `-` is stdin.
example on ippsec video lightweight.
-U                prints to stdout and flushes buffer on packet boundaries instead of lines
-s0               snap length 0
`-w -`            write to stdout
positional arg    filter expression
```bash
ssh user@$IP "/usr/bin/tcpdump -i lo -U -s0 -w - 'not port 22'" | wireshark -k -i -
```

# Related

- [20221003150717](/zet/20221003150717/README.md) packet capture
- ~/kb/hacking/commands/packet-capture.md

Tags:

    #assorted #command #hacking #packet
