# run docker in background without exiting

The foreground app running in the docker will exit if the stdin is EOF.
In most cases, if it's running sh or bash, a closed input stream means the program should exit.
To prevent this, attach a tty and detach from the running container.
```bash
docker run -td ImageName
```

` zet/20221003151273/README.md `

# Related

- [20221014185443](/zet/20221014185443/README.md) kb file named kb/docker/run-container-in-background.md
- [20221009015558](/zet/20221009015558/README.md) docker
- [20221008212929](/zet/20221008212929/README.md) running process

Tags:

    #docker #tip #terminal #program #container
