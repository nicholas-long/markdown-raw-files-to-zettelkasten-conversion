### python
```bash
ipython3

import ldap3
server = ldap3.Server(os.environ.get("IP"), get_info = ldap3.ALL, port = 389, use_ssl = False)
connection = ldap3.Connection(server)
connection.bind()
server.info
```

#### dump all object data
```
connection.search(search_base='DC=DOMAIN,DC=LOCAL', search_filter='(&(objectClass=*))', search_scope='SUBTREE', attributes='*')
```

