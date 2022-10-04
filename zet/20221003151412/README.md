# bash scripting mount shared folders on VM
~/kb/linux/mount-shared-folders-in-vm.sh
```bash
#!/bin/bash

# mount shared folders on VM
/usr/bin/vmhgfs-fuse .host:/ /home/kali/shares -o subtype=vmhgfs-fuse,allow_other

```

~/kb/linux/mount-shared-folders-in-vm.sh
# Related

- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:

    #assorted #bash #script
