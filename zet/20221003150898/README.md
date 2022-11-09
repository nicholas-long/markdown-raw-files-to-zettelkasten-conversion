# linux enumeration quick commands capabilities running process effective capabilities
```bash
cat /proc/*/status | awk '/CapEff/ && $2 !~ /^0*$/ { print name, pid, uid, $2 } /^Pid/ { pid = $2 } /^Uid/ { uid = $2 } /^Name/ { name = $2 }'
```

` zet/20221003150898/README.md `

# Related

- [20221014185808](/zet/20221014185808/README.md) kb file named kb/hacking/priv-esc/enumeration-quick-commands.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- ~/kb/hacking/priv-esc/enumeration-quick-commands.md

Tags:

    #command #hacking #privesc #enumeration 
