# LDAP enumeration anonymous nmap scripts
```bash
nmap -n -sV --script "ldap* and not brute" $IP

# retrieve information for all objects ( default script capped at 20 )
nmap -n -sV --script "ldap* and not brute" --script-args 'ldap.maxobjects=-1' $IP | tee nmap-ldap.log
```
` zet/20221003150628/README.md `

# Related

- [20221013173355](/zet/20221013173355/README.md) the process of enumerating a target
- [20221003150629](/zet/20221003150629/README.md) LDAP enumeration anonymous
- ~/kb/hacking/commands/ldap.md

Tags:

    #command #hacking #ldap 
