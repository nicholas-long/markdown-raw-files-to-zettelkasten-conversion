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

# References
- [20221003151271](/zet/20221003151271/) docker cleanup
- ~/kb/docker/docker-hd-space.md

Tags:
    #assorted

