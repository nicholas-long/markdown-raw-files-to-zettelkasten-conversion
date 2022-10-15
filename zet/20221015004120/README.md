# ippsec video opensource

- i did this machine - going to watch for inspiration
- os.path.join
- automatically reloading web server
- 
- 
- 
- 
- 
- 
- 
- 
- 

- video timestamps from youtube
```
01:18 - Start of nmap
02:50 - Identifying a Docker exists based upon the Python Version in NMAP + SSH Version [MasterRecon]
04:23 - Navigating to the website downloading the source code available, there is a git folder switching branches 
08:00 - Discovering a vulnerability in the os.path.join command, if we prefix our path with a slash it will overwrite the entire path
11:25 - Attempting to upload a malicious cron, docker isn't running cron so it doesn't work
14:37 - Adding a new route to the application to execute commands
18:00 - Able to run commands and get the output
19:30 - Creating an endpoint to send reverse shells in the webapp
21:45 - Reverse shell returned
24:30 - Looking at port 3000 which was previously filtered. Looks like its a Gitea interface but we don't have creds
27:10 - Uploading Chisel and tunneling to access the website
29:20 - Looking at old git commits from the source code and finding credentials
33:30 - Downloading a SSH Private Key from the Gitea website
35:50 - Using find to search files modified around the time the SSH Key was uploaded to the box in order to see what else happened [Forensics]
36:40 - Showing how to remove lines from the less view &!
39:30 - Checking if Git-Sync is executed with the watch command
40:10 - Finding out git executes every minute, setting a pre-commit hook to get root
43:50 - Showing the FSMonitor command in the gitconfig which is another way to execute code, this will run on many other git commands like git status where pre-commit would not
```

` zet/20221015004120/README.md `

# Related

- [20221015011525](/zet/20221015011525/README.md) my notes for opensource machine - steps
- [20221014074852](/zet/20221014074852/README.md) "Keep It Simple Stupid" principle of engineering and design
- [20221003151023](/zet/20221003151023/README.md) analyzing source code
- [20221003150946](/zet/20221003150946/README.md) python
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub
- [20221015004252](/zet/20221015004252/README.md) htb opensource machine
- [20221011092421](/zet/20221011092421/README.md) hacking video notes
- [20221006213953](/zet/20221006213953/README.md) video notes
- [20221006213311](/zet/20221006213311/README.md) hackthebox
- [20221006214348](/zet/20221006214348/README.md) ippsec

Tags:

    #idea
