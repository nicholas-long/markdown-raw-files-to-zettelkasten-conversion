# how to fix ubuntu gnome not remembering screen rotation on One Mix netbook?

- concept of `why does ubuntu gnome not remember the screen rotation?`
  - on default install ubuntu does not remember that i want the screen rotated to normal computer mode
    - had that problem with kali too. fixed in x display settings by diagnosing xorg log?

- create this file in /lib/udev/hwdb.d/61-sensor-local.hwdb
```
sensor:modalias:acpi:BOSC0200*:dmi*
 ACCEL_MOUNT_MATRIX=0, 1, 0; 1, 0, 0; 0, 0, 1
```

- useful steps to solution
  - https://forum.xda-developers.com/t/one-mix-yoga-alternative-os-linux-ubuntu-android.3815725/
  - Display & touchscreen rotation
    - create this file in /lib/udev/hwdb.d/61-sensor-local.hwdb
    - then execute "systemd-hwdb update" and reboot
    ```
    sensor:modalias:acpi:BOSC0200*:dmi*
     ACCEL_MOUNT_MATRIX=0, 1, 0; 1, 0, 0; 0, 0, 1
    ```
  - note from OP: see https://www.aixin.fr/jipeblog/?p=119, need to give the sensor a better name

- things that did not work
  - tried launching gnome-control-center as root - it does not work
  - gnome config is stored in `/etc/gdm/gdm.conf`
  - local config stored in monitors.xml
  - script to update based on monitors file is available at https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/ubuntugnome/update-monitor-position
    - https://github.com/NicolasBernaerts/ubuntu-scripts/blob/master/ubuntugnome/update-monitor-position
    - https://askubuntu.com/questions/6137/saving-monitor-settings

` zet/20221015172248/README.md `

# Related

- [20221009095853](/zet/20221009095853/README.md) finished

- [20221012090938](/zet/20221012090938/README.md) my One Mix netbook
- [20221012101349](/zet/20221012101349/README.md) ubuntu
- [20221003150350](/zet/20221003150350/README.md) troubleshooting fix error
- [20221016161034](/zet/20221016161034/README.md) one mix netbook standby issues in linux
- [20221009104752](/zet/20221009104752/README.md) stuff to research
- [20221015173433](/zet/20221015173433/README.md) gnome window manager
- [20221008061845](/zet/20221008061845/README.md) workflow
- [20221007062330](/zet/20221007062330/README.md) broken stuff to fix
- https://askubuntu.com/questions/55769/where-does-gnome-display-properties-save-the-different-configurations
- https://www.halolinux.us/ubuntu-study/gnome-display-manager-configuration-file.html gdm file

Tags:

    #fix
