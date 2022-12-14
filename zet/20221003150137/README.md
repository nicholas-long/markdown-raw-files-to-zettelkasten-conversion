# installing virtualbox

Virtualbox can be installed as an APT package, but you must do a full apt update and upgrade first.
This is because it needs to install kernel modules, so the kernel headers and versions and package
versions must match.
```bash
sudo apt update && sudo apt upgrade && sudo apt install -y virtualbox
```

` zet/20221003150137/README.md `

# Related

- [20221014190203](/zet/20221014190203/README.md) kb file named kb/linux/installing-virtualbox.md
- [20221018152638](/zet/20221018152638/README.md) virtualbox
- [20221013194055](/zet/20221013194055/README.md) concept of installing something
- [20221003151274](/zet/20221003151274/README.md) install mandown
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221006025730](/zet/20221006025730/README.md) apt repositories

Tags:

    #vm #linux #virtualbox #apt 
