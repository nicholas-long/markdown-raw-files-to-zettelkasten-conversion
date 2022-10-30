# check for duplicate hashtags in cards

- concept of `what if a card has duplicate hashtags?`
- experimental results
  - should not cause problems - ignore duplicates
  - should not add multiple entries to tag index
  - is tag index even sorted?
  - does not seem to cause a problem
- detecting
  - added script `zet/20221024180316/gettags`

```
#
# have duplicate tags
#

# #docker
- [20221003151269](/zet/20221003151269/README.md) docker cleanup Free up space immediately #docker #docker 
- [20221003151270](/zet/20221003151270/README.md) docker cleanup Try to keep logs under control #docker #docker 

# #file
- [20221003150980](/zet/20221003150980/README.md) mariadb mysql files write #hacking #sqli #file #database #file #trick

# #shell
- [20221003150090](/zet/20221003150090/README.md) bash scripts sh run docker catch rev shell #shell #docker #shell #test

# #todo
- [20221010161950](/zet/20221010161950/README.md) create issue for things tagged #feature, #enh, ... automatically #todo #todo #enhancement

# #windows
- [20221003150746](/zet/20221003150746/README.md) impacket kerberos commands wmiexec #command #hacking #windows #windows 
- [20221003150747](/zet/20221003150747/README.md) impacket kerberos commands ticket environment variable KRB5CCNAME #command #hacking #windows #windows 
- [20221003150748](/zet/20221003150748/README.md) impacket kerberos commands #command #hacking #windows #windows 
- [20221003150749](/zet/20221003150749/README.md) crackmapexec kerberos authentication with ticket include ticket environment variable #command #hacking #windows #windows 
- [20221003150750](/zet/20221003150750/README.md) crackmapexec kerberos authentication with ticket #command #hacking #windows #windows 
- [20221003150751](/zet/20221003150751/README.md) kerbrute password spray users from user list file #command #hacking #windows #windows 
- [20221003150752](/zet/20221003150752/README.md) kerbrute enumerate users using wordlist #command #hacking #windows #windows 
- [20221003150753](/zet/20221003150753/README.md) kerbrute #command #hacking #windows #windows 
- [20221003151033](/zet/20221003151033/README.md) applocker limit allowed executables and allowed paths bypass executable blocking #hacking #windows #windows 
- [20221003151034](/zet/20221003151034/README.md) applocker limit allowed executables and allowed paths #hacking #windows #windows 
- [20221003151038](/zet/20221003151038/README.md) dumping credentials as admin in remote desktop RDP or GUI #hacking #windows #windows 
- [20221003151042](/zet/20221003151042/README.md) windows alternate data streams commands displaying content with powershell #hacking #windows #windows 
- [20221003151043](/zet/20221003151043/README.md) windows alternate data streams commands creating alt streams #hacking #windows #windows 
- [20221003151044](/zet/20221003151044/README.md) windows alternate data streams commands enumerate directory for alt streams #hacking #windows #windows 
- [20221003151045](/zet/20221003151045/README.md) windows alternate data streams commands #hacking #windows #windows 
- [20221003151046](/zet/20221003151046/README.md) windows reverse shell AV bypass defender #hacking #windows #windows 
- [20221003151047](/zet/20221003151047/README.md) windows reverse shell AV bypass active directory endpoint protection #hacking #windows #windows 
- [20221003151048](/zet/20221003151048/README.md) windows reverse shell AV bypass #hacking #windows #windows 
- [20221003151049](/zet/20221003151049/README.md) change user password powershell or dos #hacking #windows #windows 
- [20221003151050](/zet/20221003151050/README.md) change user password #hacking #windows #windows 
- [20221003151084](/zet/20221003151084/README.md) windows sensitive file disclosure cheat sheet determine version #hacking #windows #windows 
- [20221003151098](/zet/20221003151098/README.md) powershell commands execute encoded command as quietly as possible #hacking #windows #windows 
- [20221003151099](/zet/20221003151099/README.md) powershell commands encoded command nop bypass hidden #hacking #windows #windows 
- [20221003151100](/zet/20221003151100/README.md) powershell commands download and execute script #hacking #windows #windows 
- [20221003151101](/zet/20221003151101/README.md) powershell commands #hacking #windows #windows 
- [20221003151102](/zet/20221003151102/README.md) DOS commands download file from http #hacking #windows #windows 
- [20221003151125](/zet/20221003151125/README.md) active directory  delegation constrained #hacking #windows #windows 
- [20221003151126](/zet/20221003151126/README.md) active directory  delegation unconstrained #hacking #windows #windows 
- [20221003151127](/zet/20221003151127/README.md) active directory  delegation #hacking #windows #windows 
- [20221003151128](/zet/20221003151128/README.md) active directory  DNS adding DNS records #hacking #windows #windows 
- [20221003151129](/zet/20221003151129/README.md) active directory  DNS #hacking #windows #windows #hub #ad
- [20221003151130](/zet/20221003151130/README.md) active directory  change user password with rpcclient over SMB  #hacking #windows #windows 
- [20221003151131](/zet/20221003151131/README.md) active directory  GMSA group managed service account remote LDAP read GMSA passwords python script fix missing ConvertFrom-AdManagedPasswordBlob #hacking #windows #windows 
- [20221003151132](/zet/20221003151132/README.md) active directory  GMSA group managed service account remote LDAP read GMSA passwords python script #hacking #windows #windows 
- [20221003151133](/zet/20221003151133/README.md) active directory  GMSA group managed service account read NTLM hash with powershell + python #hacking #windows #windows 
- [20221003151134](/zet/20221003151134/README.md) active directory  GMSA group managed service account #hacking #windows #windows 
- [20221003151136](/zet/20221003151136/README.md) active directory  mindset and methodology #hacking #windows #windows 
- [20221003151138](/zet/20221003151138/README.md) active directory  Backup Operators group #hacking #windows #windows 
- [20221003151139](/zet/20221003151139/README.md) active directory  ForceChangePassword change user password #hacking #windows #windows 
- [20221003151140](/zet/20221003151140/README.md) active directory  NTLMv2 vs kerberos authentication on the network #hacking #windows #windows 
- [20221003151141](/zet/20221003151141/README.md) active directory  exploiting permissions GenericAll #hacking #windows #windows 
- [20221003151142](/zet/20221003151142/README.md) active directory  exploiting permissions WriteDacl #hacking #windows #windows 
- [20221003151143](/zet/20221003151143/README.md) active directory  exploiting permissions #hacking #windows #windows 
- [20221003151205](/zet/20221003151205/README.md) windows privilege escalation AD headline exploits #to-try-list #hacking #privesc #windows #windows 
- [20221003151206](/zet/20221003151206/README.md) windows privilege escalation headline exploits #to-try-list #hacking #privesc #windows #windows 
- [20221003151207](/zet/20221003151207/README.md) windows privilege escalation #to-try-list #hacking #privesc #windows #windows 
- [20221003151262](/zet/20221003151262/README.md) windows executable smartscreen protection bypass ( apt 29 ) #hacking #trick #windows #windows 
- [20221003151263](/zet/20221003151263/README.md) windows executable smartscreen protection #hacking #trick #windows #windows 

# `
- [20221005194814](/zet/20221005194814/README.md) Related ` zet/20221005194814/README.md `

#
# have no tags
#
- [20221003150072](/zet/20221003150072/README.md) Set spacevim record key back to [Q] 
- [20221003150073](/zet/20221003150073/README.md) Run vim as a script on datafile, write to file `output` 
- [20221003150076](/zet/20221003150076/README.md) tmux swap panes 
- [20221003150098](/zet/20221003150098/README.md) todo 
- [20221003150116](/zet/20221003150116/README.md) Socat over proxy 
- [20221003150117](/zet/20221003150117/README.md) OSI networking model 
- [20221003150118](/zet/20221003150118/README.md) get numpad to work in ssh over putty 
- [20221003150132](/zet/20221003150132/README.md) find file with name matching regular expression 
- [20221003150135](/zet/20221003150135/README.md) enable horizontal scroll in less 
- [20221003150177](/zet/20221003150177/README.md) notes 
- [20221003150194](/zet/20221003150194/README.md) set the bash prompt to use vi hotkeys 
- [20221003150195](/zet/20221003150195/README.md) desktop notification reminders in crontab with notify-send 
- [20221003150198](/zet/20221003150198/README.md) control key mappings for sh 
- [20221003150202](/zet/20221003150202/README.md) fix grub not showing windows partition 
- [20221003150219](/zet/20221003150219/README.md) MSI motherboard error codes 
- [20221003150222](/zet/20221003150222/README.md) change interface mac address 
- [20221003150243](/zet/20221003150243/README.md) jekyll blog markdown to html 
- [20221003150248](/zet/20221003150248/README.md) Azure AD connect 
- [20221003150253](/zet/20221003150253/README.md) PXE boot 
- [20221003150255](/zet/20221003150255/README.md) solidity 
- [20221003150256](/zet/20221003150256/README.md) IPsec VPN UDP port 500 2500 strongswan 
- [20221003150271](/zet/20221003150271/README.md) create openssl client certificates from leaked CA private key 
- [20221003150275](/zet/20221003150275/README.md) firefox reverse shell toolbar hacktools 
- [20221003150290](/zet/20221003150290/README.md) Potentially risky HTTP methods: TRACE 
- [20221003150292](/zet/20221003150292/README.md) java jdb execute commands 
- [20221003150294](/zet/20221003150294/README.md) wireshark TLS1.2 handshake packet 
- [20221003150295](/zet/20221003150295/README.md) nodejs api controller program default files 
- [20221003150315](/zet/20221003150315/README.md) python uvicorn `--reload` flag 
- [20221003150317](/zet/20221003150317/README.md) malwarebytes 
- [20221003150323](/zet/20221003150323/README.md) crowdstrike falcon 
- [20221003150327](/zet/20221003150327/README.md) bloodhound sharphound fix import errors - incompatible versions 
- [20221003150328](/zet/20221003150328/README.md) compile windows c++ binaries on linux 
- [20221003150329](/zet/20221003150329/README.md) problems/issues connecting through multiple VPNs tunnels MTU 
- [20221003150333](/zet/20221003150333/README.md) blank LM hash hex `AAD3B` 
- [20221003150334](/zet/20221003150334/README.md) python pickle serialization magic bytes header signature `80 03` `80 04` `80 05` `(dp0` base64 `gASV` `gAWV` 
- [20221003150335](/zet/20221003150335/README.md) java serialization payload `rO0` base64 `AC ED 00 05` in hex 
- [20221003150347](/zet/20221003150347/README.md) bruteforcing services 
- [20221003150351](/zet/20221003150351/README.md) pack windows payload in ISO to avoid MOTW 
- [20221003150358](/zet/20221003150358/README.md) jxplorer connect to LDAP GUI access 
- [20221003150361](/zet/20221003150361/README.md) connect to minecraft server and send chat messages 
- [20221003150372](/zet/20221003150372/README.md) web app paths defaults db 
- [20221003150420](/zet/20221003150420/README.md) finger user enum 
- [20221003150434](/zet/20221003150434/README.md) HTML preview report input list of HTTP(s) sites attack surface with aquatone 
- [20221003150435](/zet/20221003150435/README.md) obfuscate powershell scripts (python) 
- [20221003150437](/zet/20221003150437/README.md) dump git repository leaked by website 
- [20221003150440](/zet/20221003150440/README.md) Compiled versions of .NET Windows enumeration tools 
- [20221003150442](/zet/20221003150442/README.md) payloads payloadsallthethings github 
- [20221003150443](/zet/20221003150443/README.md) seclists github 
- [20221003150444](/zet/20221003150444/README.md) hacktricks markdown data github 
- [20221003150446](/zet/20221003150446/README.md) linux exploit suggester 
- [20221003150449](/zet/20221003150449/README.md) keepass CLI tool open and edit keepass databases 
- [20221003150455](/zet/20221003150455/README.md) ike-scan for ike IPsec VPNs 
- [20221003150456](/zet/20221003150456/README.md) bruteforce-salted-openssl to brute force openssl encrypted files 
- [20221003150459](/zet/20221003150459/README.md) openssl cipher commands encrypt text 
- [20221003150549](/zet/20221003150549/README.md) URL CRAWL/ Discovery waybackurls 
- [20221003150551](/zet/20221003150551/README.md) php cmd shell 
- [20221003150554](/zet/20221003150554/README.md) Perl Reverse Shell 
- [20221003150555](/zet/20221003150555/README.md) Active Sever Pages Extended (.aspx) Execute a File 
- [20221003150556](/zet/20221003150556/README.md) Active Sever Pages Extended (.aspx) Transfer A File (Certutil) 
- [20221003150557](/zet/20221003150557/README.md) WhiteWinterWolf Webshell 
- [20221003150558](/zet/20221003150558/README.md) coyote PHP command shell 
- [20221003150559](/zet/20221003150559/README.md) Kali Default PHP CMD Shell 
- [20221003150560](/zet/20221003150560/README.md) Kali Default PHP Reverse Shell 
- [20221003150561](/zet/20221003150561/README.md) Python Reverse Shell Code  
- [20221003150562](/zet/20221003150562/README.md) Python Reverse Shell As Command  
- [20221003150563](/zet/20221003150563/README.md) Bash Reverse Shell 
- [20221003150564](/zet/20221003150564/README.md) python upgrade shell (TTY Shell) 
- [20221003150565](/zet/20221003150565/README.md) Netcat Sending file 
- [20221003150566](/zet/20221003150566/README.md) Netcat Receiving file 
- [20221003150568](/zet/20221003150568/README.md) SMB List Drives (Execute on Victim) 
- [20221003150569](/zet/20221003150569/README.md) Powershell File Transfer As Cmd.exe Command 
- [20221003150577](/zet/20221003150577/README.md) php quick client phishing attack credential harvesting 
- [20221003150632](/zet/20221003150632/README.md) list dpkg packages installed on a certain date 
- [20221003150666](/zet/20221003150666/README.md) hydra brute force HTTP post form 
- [20221003150684](/zet/20221003150684/README.md) encode string as base64 url encoded 
- [20221003150685](/zet/20221003150685/README.md) decode hex on command line 
- [20221003150725](/zet/20221003150725/README.md) openssl and ssh view public key of a private key 
- [20221003150863](/zet/20221003150863/README.md) wget download FTP directory files recursively 
- [20221003150892](/zet/20221003150892/README.md) get all root process IDs 
- [20221003150893](/zet/20221003150893/README.md) get facl recursively centos / redhat 
- [20221003150921](/zet/20221003150921/README.md) windows persistence and DLL hijacking locations 
- [20221003150972](/zet/20221003150972/README.md) crack salted md5 hash with hashcat 
- [20221003151029](/zet/20221003151029/README.md) MS08-067 
- [20221003151031](/zet/20221003151031/README.md) windows manipulate, enable and privesc with process tokens 
- [20221003151032](/zet/20221003151032/README.md) fix downloading file with evil-winrm 
- [20221003151036](/zet/20221003151036/README.md) program files UNP directory 
- [20221003151037](/zet/20221003151037/README.md) program files ruxim directory 
- [20221003151040](/zet/20221003151040/README.md) create windows backdoor accounts 
- [20221003151041](/zet/20221003151041/README.md) exploiting SeRestorePrivilege 
- [20221003151051](/zet/20221003151051/README.md) set date to match Active Directory server with ntpdate 
- [20221003151052](/zet/20221003151052/README.md) check network time offset with network time protocol NTP server on windows AD kerberos 
- [20221003151054](/zet/20221003151054/README.md) windows exploit unquoted service path meterpreter reverse service exe 
- [20221003151057](/zet/20221003151057/README.md) get windows enumeration info from file read 
- [20221003151058](/zet/20221003151058/README.md) windows directory traversal path traversal LFI strings 
- [20221003151082](/zet/20221003151082/README.md) powerup powershell windows privesc enumeration script 
- [20221003151156](/zet/20221003151156/README.md) hashcat generate passwords from password masks and output to stdout 
- [20221003151157](/zet/20221003151157/README.md) hashcat generate wordlist from file with rules 
- [20221003151158](/zet/20221003151158/README.md) License 
- [20221003151160](/zet/20221003151160/README.md) password_cracking_rule 
- [20221003151161](/zet/20221003151161/README.md) pivoting guide 
- [20221003151227](/zet/20221003151227/README.md) convert string to a base64 encoded UTF-16LE string to be used by powershell 
- [20221003151241](/zet/20221003151241/README.md) ping whole subnet of IPs in a loop to fingerprint OS versions 
- [20221003151260](/zet/20221003151260/README.md) run windows exploit on linux using wine 
- [20221003151261](/zet/20221003151261/README.md) build windows exploit on linux using mingw 
- [20221003151272](/zet/20221003151272/README.md) docker compose aliases for convenience 
- [20221003151274](/zet/20221003151274/README.md) install mandown 
- [20221003151275](/zet/20221003151275/README.md) install docker compose cli extension 
- [20221003151300](/zet/20221003151300/README.md) drop newlines from stream with tr 
- [20221003151302](/zet/20221003151302/README.md) get current script directory 
- [20221003151339](/zet/20221003151339/README.md) enumerate all python imports; chain 2 awk scripts with a filter 
- [20221003151340](/zet/20221003151340/README.md) awk print unbuffered output 
- [20221003151341](/zet/20221003151341/README.md) awk split string 
- [20221003151431](/zet/20221003151431/README.md) awk scripting check output of grep and next line using awk "grep -A 1 -R '^' ." 
- [20221003151442](/zet/20221003151442/README.md) Box drawing ascii unicode characters 
- [20221006135903](/zet/20221006135903/README.md) Related 
- [20221006140015](/zet/20221006140015/README.md) Related 
- [20221006140122](/zet/20221006140122/README.md) Related 
- [20221006140135](/zet/20221006140135/README.md) Related 
- [20221006153432](/zet/20221006153432/README.md) Related 
- [20221006153444](/zet/20221006153444/README.md) Related 
- [20221012134544](/zet/20221012134544/README.md) interesting github repo like org roam zettelkasten 
```

` zet/20221024180316/README.md `

# Related

- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221021081636](/zet/20221021081636/README.md) template example card to run command output in snippet

Tags:

    #idea #question #zet #test #report
