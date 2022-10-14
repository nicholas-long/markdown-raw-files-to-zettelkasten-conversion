# LDAP enumeration anonymous nmap scripts
```bash
nmap -n -sV --script "ldap* and not brute" $IP

# retrieve information for all objects ( default script capped at 20 )
nmap -n -sV --script "ldap* and not brute" --script-args 'ldap.maxobjects=-1' $IP | tee nmap-ldap.log
```
` zet/20221003150628/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003150488](/zet/20221003150488/README.md) active directory
- [20221003151172](/zet/20221003151172/README.md) active directory domain to try list
- [20221003151203](/zet/20221003151203/README.md) LDAP
- [20221003151016](/zet/20221003151016/README.md) nmap scripts search by type
- [20221003151015](/zet/20221003151015/README.md) nmap scripts all script types
- [20221013173355](/zet/20221013173355/README.md) the process of enumerating a target
- [20221003150629](/zet/20221003150629/README.md) LDAP enumeration anonymous
- ~/kb/hacking/commands/ldap.md

Tags:

    #command #hacking #ldap 
