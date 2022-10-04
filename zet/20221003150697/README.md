# SNMP enumeration command snmpwalk 
in order to get meaningful names instead of snmp ID numbers, set up and configure:
- `apt install snmp-mibs-downloader`
- edit `/etc/snmp/snmp.conf`
  - comment out line `mibs: $`

```bash
snmpwalk -c public -v2c $IP
snmpwalk -c public -v1 $IP
```

# References
- [20221003150698](/zet/20221003150698/README.md) SNMP enumeration command
- ~/kb/hacking/commands/snmp-enumeration-commands.md

Tags:
    #assorted #command #hacking #snmp
