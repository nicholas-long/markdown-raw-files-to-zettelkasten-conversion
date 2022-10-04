# LDAP enumeration anonymous python
```bash
ipython3

import ldap3
server = ldap3.Server(os.environ.get("IP"), get_info = ldap3.ALL, port = 389, use_ssl = False)
connection = ldap3.Connection(server)
connection.bind()
server.info
```

# Related

- [20221003150629](/zet/20221003150629/README.md) LDAP enumeration anonymous
- [20221003150626](/zet/20221003150626/README.md) LDAP enumeration anonymous python dump all object data
- ~/kb/hacking/commands/ldap.md

Tags:

    #command #hacking #ldap 
