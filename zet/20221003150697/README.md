# SNMP enumeration command snmpwalk 
in order to get meaningful names instead of snmp ID numbers, set up and configure:
- `apt install snmp-mibs-downloader`
- edit `/etc/snmp/snmp.conf`
  - comment out line `mibs: $`

```bash
snmpwalk -c public -v2c $IP
snmpwalk -c public -v1 $IP
```

` zet/20221003150697/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes node

- [20221003150698](/zet/20221003150698/README.md) SNMP enumeration command
- ~/kb/hacking/commands/snmp-enumeration-commands.md

Tags:

    #command #hacking #snmp 
