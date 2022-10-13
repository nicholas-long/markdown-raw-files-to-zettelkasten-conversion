# ping whole subnet of IPs in a loop to fingerprint OS versions
```bash
for host in {1..254}; do ping -c 1 10.1.1.$host; done
```
Filter non windows hosts `| grep 'bytes from' | grep -v 'ttl=12'`

` zet/20221003151241/README.md `

# Related

- 20221006025356

- 20221003150786

- 20221003150782

- 20221003150683

- 20221003150482


Tags:

    
