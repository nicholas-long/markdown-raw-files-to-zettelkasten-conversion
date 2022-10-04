# linux assorted commands find disk mounting for root file system
```bash
mount | awk '$3 == "/" {print $1}'
ll $(mount | awk '$3 == "/" {print $1}')
```

# Related

- [20221003150156](/zet/20221003150156/README.md) linux assorted commands
- ~/kb/linux/os-pseudo-filesystem-data-commands.md

Tags:

    #command #linux #os 
