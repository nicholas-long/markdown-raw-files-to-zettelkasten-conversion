# watch failed ssh login attempts as a live stream

```bash
tail -f /var/log/auth.log | awk '/Invalid user/ { print $8, $10 }'
```

- [20221003151393](/zet/20221003151393/README.md) bash scripting lookup unique hosts with shodan api

` zet/20221003151322/README.md `

# Related

- [20221003151393](/zet/20221003151393/README.md) bash scripting watch failed ssh logins as live stream lookup in shodan
- [20221014190245](/zet/20221014190245/README.md) kb file named kb/bash-scripting/watch-failed-ssh-logins-live.md
- [20221013190051](/zet/20221013190051/README.md) blue team
- [20221013035616](/zet/20221013035616/README.md) fun
- [20221003151174](/zet/20221003151174/README.md) SSH to try list
- [20221003151155](/zet/20221003151155/README.md) linux hardening

Tags:

    #trick #defense #hacking #ssh
