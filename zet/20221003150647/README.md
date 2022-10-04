# nmap flags
`-sT` TCP connection scan : running -p- on sudo nmap could do UDP ports and is slow
`-sS` syn scan
`-sV` run version enumeration scripts
`--open` flag to sleep up scans
`-T5` or `--min-rate 10000` to increase scan rate
`-A` run "all" scripts
`-sC` equivalent to --script=default

# References
- [20221003150648](/zet/20221003150648/README.md) nmap
- [20221003150646](/zet/20221003150646/README.md) nmap flags extra fast options
- [20221003150645](/zet/20221003150645/README.md) nmap flags increase speed
- ~/kb/hacking/commands/nmap-command.md

Tags:
    #assorted #command
