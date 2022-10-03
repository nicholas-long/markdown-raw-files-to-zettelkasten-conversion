# plus sign in ls output file ACL
plus sign indicates presence of ACL for file
seen on centos / redhat

## reading ACLs
```bash
getfacl $FILE
```

### recursively
```bash
getfacl -R -s .
getfacl -R -s /
```

