# linux enumeration quick commands capabilities running process effective capabilities
```bash
cat /proc/*/status | awk '/CapEff/ && $2 !~ /^0*$/ { print name, pid, uid, $2 } /^Pid/ { pid = $2 } /^Uid/ { uid = $2 } /^Name/ { name = $2 }'
```

# References
- [20221003150901](/zet/20221003150901/) linux enumeration quick commands capabilities
- ~/kb/hacking/priv-esc/enumeration-quick-commands.md

Tags:
    #assorted

