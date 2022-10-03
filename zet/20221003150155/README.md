# linux assorted commands find disk mounting for root file system
```bash
mount | awk '$3 == "/" {print $1}'
ll $(mount | awk '$3 == "/" {print $1}')
```

# References
- [20221003150156](/zet/20221003150156/) linux assorted commands
- ~/kb/linux/os-pseudo-filesystem-data-commands.md

Tags:
    #assorted

