# smbclient download All Files From A Directory Recursively
```bash
smbclient '\\server\share' -N -c 'prompt OFF;recurse ON;cd 'path\to\directory\';lcd '~/path/to/download/to/';mget *'
```

example:
```bash
smbclient \\\\$IP\\Data -U John -c 'prompt OFF;recurse ON;cd '\Users\John\';lcd '/tmp/John';mget *'
```

` zet/20221003150607/README.md `

# Related

- [20221014185947](/zet/20221014185947/README.md) kb file named kb/hacking/commands/smbclient-commands.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150611](/zet/20221003150611/README.md) smbclient
- ~/kb/hacking/commands/smbclient-commands.md

Tags:

    #command #hacking #smbclient 
