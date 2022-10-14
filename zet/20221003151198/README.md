# SMB to try list
- guest access to shares
  - null auth
  - guest access with only username required
- enum4linux & enum4linux-ng
- common creds: `Guest:`
- dump users
  - impacket samrdump ( auth )
  - sid brute forcing
- rpcclient / rpcdump
  - authenticated enumeration of domains and groups
- read registry impacket reg.py
- authenticated
  - crackmapexec with `--shares` - enumerate read/write access
  - access to read `IPC$`
    - user and group enum with crackmapexec with `--rid-brute`
  - crackmapexec with `--users`
  - admin -> shell
    - psexec
    - wmiexec - quieter than psexec
- upload permissions
  - dangerous files with links to attacker smb share
- getting NTLMv2 hashes
  - if a user is viewing directories
    - scf external icon link
    - lnk
    - documents with embedded links `\\attacker`
  - user opening files
    - docx with embedded links to external images
    - docm with macros
- kerberos auth
- brute force: crackmapexec
- nmap smb vuln scan
- shell with administrator privs ( auth )
- relay?
- catch NTLM hashes from windows clients that automatically authenticate
- include AD list if machine is connected to AD
- everything from everything list [EVERYTHING](EVERYTHING.md#everything)
- old -> [old SMB exploits](SMB.md#old-smb-exploits)

` zet/20221003151198/README.md `

# Related

- [20221003151175](/zet/20221003151175/README.md) EVERYTHING
- [20221003151172](/zet/20221003151172/README.md) active directory domain to try list
- [20221003151197](/zet/20221003151197/README.md) SMB old SMB exploits
- [20221003150312](/zet/20221003150312/README.md) SMB
- [20221013190422](/zet/20221013190422/README.md) headline exploits
- [20221003150838](/zet/20221003150838/README.md) scan SMB for vulnerabilities with nmap
- [20221003151035](/zet/20221003151035/README.md) hidden shares
- [20221003151169](/zet/20221003151169/README.md) NFS
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221007044552](/zet/20221007044552/README.md) todo or to-try list
- ~/kb/hacking/to-try-lists/SMB.md

Tags:

    #to-try-list #hacking #smb 
