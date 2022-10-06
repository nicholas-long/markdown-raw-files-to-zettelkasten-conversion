# problems/issues connecting through multiple VPNs tunnels MTU
try lowering MTU of the actual interface to accomodate packets with all the extra overhead of multiple VPN routing protocols
```bash
ifconfig tun0 MTU 1000
```

` zet/20221003150329/README.md `

# Related


Tags:

    
