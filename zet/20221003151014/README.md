# LFI or directory traversal procedures
Things that help get list of running processes
```
/proc/sched_debug
/proc/FUZZ/cmdline
/proc/self/cmdline
```
potential paths of running process in cmdline
fuzz `/proc/FUZZ/cmdline` for list of running processes

# References
- [20221003151013](/zet/20221003151013/) LFI or directory traversal procedures environment variables
- [20221003151012](/zet/20221003151012/) LFI or directory traversal procedures read scripts from web server process cwd
- [20221003151008](/zet/20221003151008/) LFI or directory traversal procedures file wordlists
- ~/kb/hacking/methodology/LFI-procedure.md

Tags:
    #assorted

