# scrambled machine video notes

- scrambled machine
- NTLM is disabled "due to a security breach"
- kerberos authentication
- new potato attack
- rogue potato is patched on windows?!
- Simple DNS plus -> normal on domain controllers
- kerberos time is important
- application to download an analyze
- usernames as passwords
- defaulted to kerbrute is choice for brute forcing AD
    - has `--user-as-pass` option
- `NT_STATUS_NOT_SUPPORTED`
    - easiest way to fix is with impacket
- impacket
    - Get TGT `getTGT.py`
- `11:09`
- 

timestamps from youtube
```
01:00 - Start of nmap
04:00 - Viewing the website and discovering kerberos is disabled
07:45 - Using Kerbrute to enumerate valid users and then password spray with username
10:15 - Bad analogy comparing Kerberos works with TGT/TGS and Movie Theater Tickets
11:00 - Using Impacket's GetTGT Script to get Ticket Granting Ticket as Ksimpson and exporting KRB5CCNAME so Impacket uses it
12:30 - Using GetUserSPN to Kerberoast the DC with Kerberos Authentication and cracking to get SqlSVC's Password
16:40 - Both credentials we have cannot access MSSQL
18:15 - Creating a silver ticket to gain access to SQL
19:50 - Using GetPAC to get a Domain SID
20:30 - Showing getting Domain SID with LDAPSearch
24:00 - Creating the Silver Ticket with Impacket's Ticketer
26:30 - Showing Impacket creates the ticket with 10 years instead of 10 hours
27:40 - We now have MSSQL Access to the box, enabling xp_cmdshell and getting a reverse shell
30:00 - Using JuicyPotatoNG to escalate privileges because we have SeImpersonate Privilege
32:00 - Running the JuicyPotatoNG Exploit and getting a shell in the unintended way
34:00 - Enumerating the MSSQL Database and finding credentials
35:40 - Using Evil-WinRM to login with Kerberos Auth
39:40 - Accessing the box as MiscSvc and finding a dotnet Application 
43:40 - Setting up our linux host as a router so our Windows host can communicate to the HTB Network through the linux box
47:20 - Sniffing the traffic from the dotnet application and discovering it talks to port 4411
50:20 - Looking at debug logs and seeing a serialized object
52:40 - Using YsoSerial.Net to create a malicious base64 object to send us a reverse shell
55:30 - Sending our payload and getting a reverse shell
```

` zet/20221006215623/README.md `

# Related

- https://www.youtube.com/watch?v=_8FE3JZIPfo
- [20221006213414](/zet/20221006213414/README.md) retired machines
- [20221006214348](/zet/20221006214348/README.md) ippsec
- [20221006213953](/zet/20221006213953/README.md) video notes

Tags:

    #video #hacking #notes 
