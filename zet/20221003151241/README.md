# ping whole subnet of IPs in a loop to fingerprint OS versions
```bash
for host in {1..254}; do ping -c 1 10.1.1.$host; done
```
Filter non windows hosts `| grep 'bytes from' | grep -v 'ttl=12'`

` zet/20221003151241/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003151299](/zet/20221003151299/README.md) bash tricks
- [20221013173355](/zet/20221013173355/README.md) enumeration - the process of enumerating a target
- [20221017172946](/zet/20221017172946/README.md) LAN attacks
- [20221003150488](/zet/20221003150488/README.md) active directory
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221003150786](/zet/20221003150786/README.md) enum4linux
- [20221003150782](/zet/20221003150782/README.md) enum4linux-ng next gen
- [20221003150683](/zet/20221003150683/README.md) web enumeration quick commands
- [20221003150482](/zet/20221003150482/README.md) general powershell enumeration

Tags:

    
