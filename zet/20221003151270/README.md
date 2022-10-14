# docker cleanup Try to keep logs under control
/etc/docker/daemon.json
```json
{
	  "log-driver": "local",
	  "log-opts": {
		  "max-size": "5m"
	  }
}
```

` zet/20221003151270/README.md `

# Related

- [20221014185446](/zet/20221014185446/README.md) kb file named kb/docker/docker-hd-space.md
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003151271](/zet/20221003151271/README.md) docker cleanup
- ~/kb/docker/docker-hd-space.md

Tags:

    #docker #docker 
