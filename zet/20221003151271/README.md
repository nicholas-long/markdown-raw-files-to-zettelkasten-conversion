# docker cleanup

- Free up space immediately
```bash
docker system prune -a -f
```

- Try to keep logs under control
  - create or edit docker config file `/etc/docker/daemon.json`
```json
{
	  "log-driver": "local",
	  "log-opts": {
		  "max-size": "5m"
	  }
}
```

` zet/20221003151271/README.md `

# Related

- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221014185446](/zet/20221014185446/README.md) kb file named kb/docker/docker-hd-space.md
- [20221009015558](/zet/20221009015558/README.md) docker
- [20221009015032](/zet/20221009015032/README.md) let's make a dockerfile for zet cmd
- [20221008212519](/zet/20221008212519/README.md) programming language
- ~/kb/docker/docker-hd-space.md

Tags:

    #docker #cleanup #command
