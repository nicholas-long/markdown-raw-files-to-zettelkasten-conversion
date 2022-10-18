# how to remap keys like esc in linux

- concept of `how to remap keys like esc in linux?`
- can i remap caps lock to esc?
- dconf-editor works
  - apt install dconf-editor
  - start `dconf-editor`, navigate to `org >> gnome >> desktop >> input-sources`
  - add or set array to ['caps:swapescape']

```
dconf-editor
org >> gnome >> desktop >> input-sources
['caps:swapescape']
```

` zet/20221018042949/README.md `

# Related

- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221008061845](/zet/20221008061845/README.md) workflow
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221012093513](/zet/20221012093513/README.md) how can i use my netbook in my workflow from the road
- [20221012090938](/zet/20221012090938/README.md) my One Mix netbook
- https://askubuntu.com/a/365701

Tags:

    #question #tip
