### running process effective capabilities
```bash
cat /proc/*/status | awk '/CapEff/ && $2 !~ /^0*$/ { print name, pid, uid, $2 } /^Pid/ { pid = $2 } /^Uid/ { uid = $2 } /^Name/ { name = $2 }'
```

