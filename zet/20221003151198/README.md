# SMB
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

- [20221007044552](/zet/20221007044552/README.md) todo or to-try list

- [20221003151197](/zet/20221003151197/README.md) SMB old SMB exploits
- ~/kb/hacking/to-try-lists/SMB.md

Tags:

    #to-try-list #hacking #smb 
