# linux assorted commands find disk mounting for root file system
```bash
mount | awk '$3 == "/" {print $1}'
ll $(mount | awk '$3 == "/" {print $1}')
```

` zet/20221003150155/README.md `

# Related

- [20221014190157](/zet/20221014190157/README.md) kb file named kb/linux/os-pseudo-filesystem-data-commands.md
- [20221003150156](/zet/20221003150156/README.md) linux assorted commands
- ~/kb/linux/os-pseudo-filesystem-data-commands.md

Tags:

    #command #linux #os 
