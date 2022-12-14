# LDAP enumeration anonymous nmap scripts
```bash
nmap -n -sV --script "ldap* and not brute" $IP

# retrieve information for all objects ( default script capped at 20 )
nmap -n -sV --script "ldap* and not brute" --script-args 'ldap.maxobjects=-1' $IP | tee nmap-ldap.log
```
` zet/20221003150628/README.md `

# Related

- [20221014185944](/zet/20221014185944/README.md) kb file named kb/hacking/commands/ldap.md
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003150488](/zet/20221003150488/README.md) active directory
- [20221003151172](/zet/20221003151172/README.md) active directory domain to try list
- [20221003151203](/zet/20221003151203/README.md) LDAP
- [20221003151016](/zet/20221003151016/README.md) nmap scripts search by type
- [20221003151015](/zet/20221003151015/README.md) nmap scripts all script types
- [20221013173355](/zet/20221013173355/README.md) enumeration - the process of enumerating a target
- ~/kb/hacking/commands/ldap.md
- [20221003150630](/zet/20221003150630/README.md) LDAP enumeration

Tags:

    #command #hacking #ldap 
