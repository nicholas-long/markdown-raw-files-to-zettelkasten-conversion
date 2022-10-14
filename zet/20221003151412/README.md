# bash scripting mount shared folders on VM
~/kb/linux/mount-shared-folders-in-vm.sh
```bash
#!/bin/bash

# mount shared folders on VM
/usr/bin/vmhgfs-fuse .host:/ /home/kali/shares -o subtype=vmhgfs-fuse,allow_other

```

~/kb/linux/mount-shared-folders-in-vm.sh
` zet/20221003151412/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
