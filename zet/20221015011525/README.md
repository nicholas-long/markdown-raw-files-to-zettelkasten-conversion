# my notes for opensource machine - steps

- coyote0x90 pwned 2022-09-14
- notes from htb
- went down a rabbit hole with the version of gitea being exactly vulnerable to CVE-2022-30781
  - unable to get it working because of the requirement in gitea of non-LAN DNS hostnames
  - just needed a nudge - i knew how to find the credentials once i heard i should look for them

```
Steps Taken
===========

- NMAP full port scan
- download source
  - contains git history
  - check git history for leaks - no
- investigate directory traversal
  - got working payload to disclose files `GET /uploads/..//etc/passwd HTTP/1.1`
  - can write files - yes - write rce python

# docker shell
- deepce - discovered a bunch of other containers
- port scan - 3000, 6000-6007
- port forward chisel
- investigate gitea
  - search for users
    - discover username and hostname dev01@opensource.htb
  - no repositories or organizations - seems empty
- gpg key in environment variables
- discover gitea exploit https://github.com/wuhan005/CVE-2022-30781
  - cannot import from blocked domains for certain IP ranges
- determine hostname with output of hostname -i
  - docker box 3 seems to be used when connecting to the IP through a proxy
    like as if gitea is looking up opensource.htb and connecting to its own IP
- modify payload to support serving /api
  - write script to download and expand it with tar
  - put on box 3
- get payload local testing
  - implement docker locally to where exploit works
    - copy over supervisord config
    - enable `FLASK_DEBUG` env
  - set up gitea - use environ variable `GITEA__migrations__ALLOW_LOCALNETWORKS=true` to create docker to test
  - need to enter a bogus token and check "pulls" to get it to run code

# creds - gitea
- got nudge from reading forum: should have creds
  - check git history - no
  - branches - yes
- http://172.17.0.1:3000/dev01/home-backup/raw/branch/main/.ssh/id_rsa

# privesc
2022/09/09 19:16:01 CMD: UID=0    PID=12311  | /bin/bash /usr/local/bin/git-sync
```

` zet/20221015011525/README.md `

# Related

- [20221015012530](/zet/20221015012530/README.md) rabbit holes

- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub
- [20221015004120](/zet/20221015004120/README.md) ippsec video opensource
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221006213311](/zet/20221006213311/README.md) hackthebox
- [20221006213414](/zet/20221006213414/README.md) retired machines
- [20221015004252](/zet/20221015004252/README.md) htb opensource machine

Tags:

    #idea
