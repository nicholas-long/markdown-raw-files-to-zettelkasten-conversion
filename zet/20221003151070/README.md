# dump process memory

- with task manager as admin
  - right click process and select create dump file.
  - must be run as admin.
  - saves to `appdata/local/temp/procname.DMP`.

- with sysinternals procdump: dump by process ID (ex: 1234)
```
procdump.exe -accepteula -ma 1234
procdump64.exe -accepteula -ma 1234
```

` zet/20221003151070/README.md `

# Related

- [20221014185713](/zet/20221014185713/README.md) kb file named kb/hacking/windows/dump-process-memory.md
- [20221003151069](/zet/20221003151069/README.md) dump process memory with sysinternals procdump
- [20221003151068](/zet/20221003151068/README.md) dump process memory with task manager as admin
- ~/kb/hacking/windows/dump-process-memory.md
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003151207](/zet/20221003151207/README.md) windows privilege escalation

Tags:

    #hacking #windows #dump #file #trick
