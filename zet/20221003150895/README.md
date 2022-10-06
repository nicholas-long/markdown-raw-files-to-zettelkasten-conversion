# linux enumeration quick commands check if users can see other users' processes
the proc pseudo file system will be mounted with `hidepid=2`.
the `gid` option specifies a group id that can read all processes.
```bash
mount | grep hidepid
```

` zet/20221003150895/README.md `

# Related

- [20221003150920](/zet/20221003150920/README.md) linux enumeration quick commands
- ~/kb/hacking/priv-esc/enumeration-quick-commands.md

Tags:

    #command #hacking #privesc #enumeration 
