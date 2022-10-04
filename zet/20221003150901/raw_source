## capabilities

### get capabilities of all files recursively
```bash
getcap -r / 2>/dev/null
```

### without getcap binary
```bash
cat /proc/self/status | grep Cap
cat /proc/$pid/status | grep CapEff
```

### running process effective capabilities
```bash
cat /proc/*/status | awk '/CapEff/ && $2 !~ /^0*$/ { print name, pid, uid, $2 } /^Pid/ { pid = $2 } /^Uid/ { uid = $2 } /^Name/ { name = $2 }'
```

### decode on host machine with capsh
```bash
capsh --decode=000001ffffffffff
```

