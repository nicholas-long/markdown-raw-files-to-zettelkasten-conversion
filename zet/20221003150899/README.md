# linux enumeration quick commands capabilities without getcap binary
```bash
cat /proc/self/status | grep Cap
cat /proc/$pid/status | grep CapEff
```

# References
- [20221003150901](/zet/20221003150901/README.md) linux enumeration quick commands capabilities
- ~/kb/hacking/priv-esc/enumeration-quick-commands.md

Tags:
    #assorted #command
