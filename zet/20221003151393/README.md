# bash scripting watch failed ssh logins as live stream lookup in shodan

- lookup unique hosts with shodan api
~/kb/bash-scripting/watch-failed-ssh-logins-live-check-shodan.sh
```bash
#!/bin/bash

# watch failed ssh login attempts as a live stream
# lookup unique hosts with shodan api

#cat /var/log/auth.log | \
tail -f /var/log/auth.log | \
  awk 'match($0, /[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/) {
    ip = substr($0, RSTART, RLENGTH)
    if (seen[ip]) {
      if (last != ip) print "Already saw " ip
      last = ip
    } else {
      print ip
      ip = substr($0, RSTART, RLENGTH)
      seen[ip] = 1
      system("shodan host " ip)
    }
  }
  match($0, /[Ii]nvalid user (.+)/) {
    print substr($0, RSTART, RLENGTH)
  }'
```

~/kb/bash-scripting/watch-failed-ssh-logins-live-check-shodan.sh
` zet/20221003151393/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221013035616](/zet/20221013035616/README.md) fun
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md
- [20221003151322](/zet/20221003151322/README.md) watch failed ssh login attempts as a live stream

Tags:

    #bash #script #trick #defense #ssh
