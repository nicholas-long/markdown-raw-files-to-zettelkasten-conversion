# linux free up space

- clean up system (and dmesg?) logs in /var/log/journal/
```bash
sudo journalctl --vacuum-size=100M
```

- in docker: see notes about docker cleanup
  - [20221003151271](/zet/20221003151271/README.md) docker cleanup


` zet/20221003150187/README.md `

# Related

- [20221006025356](/zet/20221006025356/README.md) linux
- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221014190141](/zet/20221014190141/README.md) kb file named kb/linux/free-up-space.md
- [20221003150186](/zet/20221003150186/README.md) linux free up space in /var/log/journal/
- [20221003150185](/zet/20221003150185/README.md) linux free up space in docker
- ~/kb/linux/free-up-space.md

Tags:

    #linux #free #data #cleanup #command
