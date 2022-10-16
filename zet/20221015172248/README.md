# why does ubuntu gnome not remember the screen rotation?

- concept of `why does ubuntu gnome not remember the screen rotation?`
- ubuntu does not remember that i want the screen rotated to normal computer mode
  - had that problem with kali too. fixed in x display settings by diagnosing xorg log?
- tried launching gnome-control-center as root - it does not work
- gnome config is stored in `/etc/gdm/gdm.conf`
- local config stored in monitors.xml
- script to update based on monitors file is available at https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/ubuntugnome/update-monitor-position
  - https://askubuntu.com/questions/6137/saving-monitor-settings

- monitors.xml
```
coyote@netbook:~$ cat .config/monitors.xml
<monitors version="2">
  <configuration>
    <logicalmonitor>
      <x>0</x>
      <y>0</y>
      <scale>2</scale>
      <primary>yes</primary>
      <transform>
        <rotation>right</rotation>
        <flipped>no</flipped>
      </transform>
      <monitor>
        <monitorspec>
          <connector>eDP-1</connector>
          <vendor>unknown</vendor>
          <product>unknown</product>
          <serial>unknown</serial>
        </monitorspec>
        <mode>
          <width>1200</width>
          <height>1920</height>
          <rate>59.984512329101562</rate>
        </mode>
      </monitor>
    </logicalmonitor>
  </configuration>
</monitors>
```
- trying something wild `chmod g-w monitors.xml`

` zet/20221015172248/README.md `

# Related

- [20221016161034](/zet/20221016161034/README.md) one mix netbook standby issues in linux
- [20221009104752](/zet/20221009104752/README.md) stuff to research
- [20221015173433](/zet/20221015173433/README.md) gnome window manager
- [20221008061845](/zet/20221008061845/README.md) workflow
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221007062330](/zet/20221007062330/README.md) broken stuff to fix
- [20221012101349](/zet/20221012101349/README.md) ubuntu
- [20221012090938](/zet/20221012090938/README.md) my One Mix netbook
- https://askubuntu.com/questions/55769/where-does-gnome-display-properties-save-the-different-configurations
- https://www.halolinux.us/ubuntu-study/gnome-display-manager-configuration-file.html gdm file

Tags:

    #idea
