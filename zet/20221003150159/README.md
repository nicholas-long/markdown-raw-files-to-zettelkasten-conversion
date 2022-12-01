# upgrade when apt is causing problems

- fix broken dpkg upgrade
```bash
sudo apt-get dselect-upgrade
```

- fix error "the following signatures couldn’t be verified because the public key is not available"
  - add the key to apt
  ```bash
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ABC123ABC123ABC1
  ```

` zet/20221003150159/README.md `

# Related

- [20221014190155](/zet/20221014190155/README.md) kb file named kb/linux/force-upgrade.md
- ~/kb/linux/force-upgrade.md

Tags:

    #linux #apt #dpkg #fix #broken #command #install
