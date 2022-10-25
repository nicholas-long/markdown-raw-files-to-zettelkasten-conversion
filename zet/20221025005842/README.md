# fix some empty zettels using graph queries

- concept of `fix some empty zettels using graph queries`
- can use script to get content zet/20221007182026/content.awk
  - input markdown files as args

```
./graphquery --human id 20221005200242 refs
# zet/20221007182026/content.awk
# move useful script to good place
cp zet/20221007182026/content.awk implementation/getcontent

# add some awk features
BEGIN { for (n = 1; n < ARGC; n++) if (ARGV[n] ~ /^[0-9]+$/) ARGV[n] = "zet/" ARGV[n] "/README.md" }
NR == 1 { next }
/^# [Rr]elated/ { nextfile }
$0 !~ /^ *$/ { print }

implementation/getcontent 20221006032546

# get way to count lines too
implementation/countlines 20221025005842 20221006032546

# fix a bug related to line count and multiple files with FNR vs NR

./graphquery id 20221005200242 refs | xargs implementation/countlines | awk '$3 == 1 { print $1 }' > zet/20221025005842/emptycards
wc -l zet/20221025005842/emptycards
254 zet/20221025005842/emptycards

for id in $(cat zet/20221025005842/emptycards); do
  export id
  ./graphquery id $id refs | xargs implementation/countlines | awk '
    $3 > 1 {
      print ENVIRON["id"], $0
    }
    '
done

zet/20221025005842/queryallneighbors

zet/20221025005842/queryallneighbors | tee zet/20221025005842/queryoutput

# used a vim script to remove all references to "empty zettels to fix" `nkdj`

--------------------------------------------------------------------------------

awk '
emptyid != $1 {
  emptyid = $1
  print ""
  print "next id", emptyid
  system("head -n 1 zet/" emptyid "/README.md")
}
{
  print
  system("head -n 1 " $3)
}
' zet/20221025005842/queryoutput


next id 20221003150191
# zsh
20221003150191 20221003150188 zet/20221003150188/README.md 8
# zsh stuff at bottom of zshrc
20221003150191 20221003150189 zet/20221003150189/README.md 6
# zsh arrow key based history autocomplete browse
20221003150191 20221003150190 zet/20221003150190/README.md 5
# zsh see default bindings for vim command and insert modes keybinds
20221003150191 20221006025356 zet/20221006025356/README.md 2
# linux
20221003150191 20221008212802 zet/20221008212802/README.md 2
# software program
20221003150191 20221012070318 zet/20221012070318/README.md 4
# linux terminal
20221003150191 20221014190140 zet/20221014190140/README.md 4
# kb file named kb/linux/zsh-see-default-bindings.md
20221003150191 20221019002732 zet/20221019002732/README.md 4
# shells

next id 20221003150193
# convert
20221003150193 20221003150192 zet/20221003150192/README.md 10
# convert package type to deb rpm slp lsb tgz
20221003150193 20221013035124 zet/20221013035124/README.md 4
# problems with markdown conversion process
20221003150193 20221014190138 zet/20221014190138/README.md 4
# kb file named kb/linux/package-manager-commands.md

next id 20221003150221
# surface tablet
20221003150221 20221003150220 zet/20221003150220/README.md 2
# surface tablet force restart
20221003150221 20221010150900 zet/20221010150900/README.md 2
# draw stuff on cards with tablet
20221003150221 20221012152421 zet/20221012152421/README.md 9
# micosoft
20221003150221 20221012211416 zet/20221012211416/README.md 4
# my gaming desktop
20221003150221 20221013203732 zet/20221013203732/README.md 4
# feels like "being plugged into the matrix"
20221003150221 20221014190233 zet/20221014190233/README.md 4
# kb file named kb/hardware/surface-tablet.md
20221003150221 20221015050620 zet/20221015050620/README.md 6
# copy from clipboard manager into PuTTY
20221003150221 20221015173720 zet/20221015173720/README.md 4
# touchscreen concept

next id 20221003150225
# bettercap
20221003150225 20221003150223 zet/20221003150223/README.md 5
# bettercap settings
20221003150225 20221003150224 zet/20221003150224/README.md 4
# bettercap start commnad
20221003150225 20221014190114 zet/20221014190114/README.md 4
# kb file named kb/hacking/lan/bettercap-options.md
20221003150225 20221017172946 zet/20221017172946/README.md 4
# LAN attacks

next id 20221003150231
# apk analysis
20221003150231 20221003150229 zet/20221003150229/README.md 2
# apk analysis emulate a phone with genymotion and virtualbox
20221003150231 20221003150230 zet/20221003150230/README.md 2
# apk analysis decompile to bytecode and inspect objects
20221003150231 20221014190111 zet/20221014190111/README.md 4
# kb file named kb/hacking/analysis/apk-analysis.md

next id 20221003150239
# extract command for file type
20221003150239 20221003150233 zet/20221003150233/README.md 4
# extract command for file type apk
20221003150239 20221003150234 zet/20221003150234/README.md 7
# extract command for file type asar
20221003150239 20221003150235 zet/20221003150235/README.md 4
# extract command for file type xz
20221003150239 20221003150236 zet/20221003150236/README.md 5
# extract command for file type tar.xz
20221003150239 20221003150237 zet/20221003150237/README.md 4
# extract command for file type tar.gz
20221003150239 20221003150238 zet/20221003150238/README.md 4
# extract command for file type deb
20221003150239 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003150239 20221010064819 zet/20221010064819/README.md 31
# locating the origin of files by hash to determine version
20221003150239 20221014190109 zet/20221014190109/README.md 4
# kb file named kb/hacking/analysis/extract-commands.md
20221003150239 20221022210052 zet/20221022210052/README.md 4
# file type reference

next id 20221003150242
# identify service
20221003150242 20221003150241 zet/20221003150241/README.md 4
# identify service port 1978 data "SIN 15win nop nop 300"
20221003150242 20221003150257 zet/20221003150257/README.md 2
# h2 database on tcp port 8082
20221003150242 20221003150335 zet/20221003150335/README.md 3
# java serialization payload `rO0` base64 `AC ED 00 05` in hex
20221003150242 20221003150347 zet/20221003150347/README.md 8
# bruteforcing services
20221003150242 20221003150361 zet/20221003150361/README.md 2
# connect to minecraft server and send chat messages
20221003150242 20221003150420 zet/20221003150420/README.md 7
# finger user enum
20221003150242 20221003151164 zet/20221003151164/README.md 8
# SNMP
20221003150242 20221003151168 zet/20221003151168/README.md 9
# HTTP proxy / squid proxy
20221003150242 20221003151195 zet/20221003151195/README.md 7
# DNS to try list
20221003150242 20221003151196 zet/20221003151196/README.md 5
# IPMI
20221003150242 20221003151199 zet/20221003151199/README.md 2
# finger tcp 79
20221003150242 20221003151202 zet/20221003151202/README.md 2
# wsmans tcp 1270, 5985, 5986
20221003150242 20221003151203 zet/20221003151203/README.md 4
# LDAP
20221003150242 20221003151237 zet/20221003151237/README.md 4
# wfuzz identify files containing version info like README and changelog
20221003150242 20221008213825 zet/20221008213825/README.md 15
# hacker concept of CMS - slang lingo for web app / service
20221003150242 20221014164014 zet/20221014164014/README.md 4
# protocol for application communication
20221003150242 20221014190106 zet/20221014190106/README.md 4
# kb file named kb/hacking/analysis/identify-service-data.md
20221003150242 20221020000848 zet/20221020000848/README.md 4
# SSH

next id 20221003150247
# enterprise PAM
20221003150247 20221003150246 zet/20221003150246/README.md 2
# enterprise PAM Thycotic
20221003150247 20221014190105 zet/20221014190105/README.md 4
# kb file named kb/hacking/misc/buzzwords-and-acronyms.md
20221003150247 20221024131549 zet/20221024131549/README.md 4
# buzzwords and acronyms hub

next id 20221003150259
# firefox
20221003150259 20221003150258 zet/20221003150258/README.md 3
# firefox containers addon = multiple sessions cookies in firefox web browser
20221003150259 20221003150275 zet/20221003150275/README.md 2
# firefox reverse shell toolbar hacktools
20221003150259 20221014190105 zet/20221014190105/README.md 4
# kb file named kb/hacking/misc/buzzwords-and-acronyms.md
20221003150259 20221024131549 zet/20221024131549/README.md 4
# buzzwords and acronyms hub

next id 20221003150264
# block ciphers AES DES blowfish
20221003150264 20221003150263 zet/20221003150263/README.md 15
# block ciphers AES DES blowfish ECB CBC CFB OFB CTR cipher modes
20221003150264 20221014190105 zet/20221014190105/README.md 4
# kb file named kb/hacking/misc/buzzwords-and-acronyms.md
20221003150264 20221024131549 zet/20221024131549/README.md 4
# buzzwords and acronyms hub

next id 20221003150265
# block ciphers
20221003150265 20221003150261 zet/20221003150261/README.md 8
# block ciphers ECB electronic code book cipher mode of operation
20221003150265 20221003150262 zet/20221003150262/README.md 8
# block ciphers CBC cipher cipher block chaining cipher mode of operation
20221003150265 20221014190105 zet/20221014190105/README.md 4
# kb file named kb/hacking/misc/buzzwords-and-acronyms.md
20221003150265 20221024131549 zet/20221024131549/README.md 4
# buzzwords and acronyms hub

next id 20221003150268
# IPMI intelligent platform management interface BMC
20221003150268 20221014190105 zet/20221014190105/README.md 4
# kb file named kb/hacking/misc/buzzwords-and-acronyms.md
20221003150268 20221024131549 zet/20221024131549/README.md 4
# buzzwords and acronyms hub

next id 20221003150269
# IPMI intelligent platform management interface zabbix
20221003150269 20221014190105 zet/20221014190105/README.md 4
# kb file named kb/hacking/misc/buzzwords-and-acronyms.md
20221003150269 20221024131549 zet/20221024131549/README.md 4
# buzzwords and acronyms hub

next id 20221003150270
# IPMI intelligent platform management interface
20221003150270 20221003150267 zet/20221003150267/README.md 5
# IPMI intelligent platform management interface udp port 613
20221003150270 20221014190105 zet/20221014190105/README.md 4
# kb file named kb/hacking/misc/buzzwords-and-acronyms.md
20221003150270 20221024131549 zet/20221024131549/README.md 4
# buzzwords and acronyms hub

next id 20221003150279
# pfx extension PKCS#12 format certificate cracking
20221003150279 20221003150277 zet/20221003150277/README.md 4
# pfx extension PKCS#12 format certificate cracking with johntheripper
20221003150279 20221003150278 zet/20221003150278/README.md 3
# pfx extension PKCS#12 format certificate cracking with crackpkcs12
20221003150279 20221003150281 zet/20221003150281/README.md 4
# pfx extension PKCS#12 format certificate
20221003150279 20221008215325 zet/20221008215325/README.md 4
# password
20221003150279 20221014190059 zet/20221014190059/README.md 4
# kb file named kb/hacking/misc/file-type-reference.md

next id 20221003150283
# default webroots debian system
20221003150283 20221014190057 zet/20221014190057/README.md 4
# kb file named kb/hacking/misc/web-server-default-webroots.md

next id 20221003150286
# default webroots BSD systems
20221003150286 20221003150284 zet/20221003150284/README.md 4
# default webroots BSD systems FreeBSD
20221003150286 20221003150285 zet/20221003150285/README.md 2
# default webroots BSD systems OpenBSD httpd
20221003150286 20221014190057 zet/20221014190057/README.md 4
# kb file named kb/hacking/misc/web-server-default-webroots.md

next id 20221003150289
# default webroots
20221003150289 20221003150282 zet/20221003150282/README.md 2
# default webroots apache
20221003150289 20221003150287 zet/20221003150287/README.md 2
# default webroots xampp
20221003150289 20221003150288 zet/20221003150288/README.md 2
# default webroots wamp
20221003150289 20221003151058 zet/20221003151058/README.md 13
# windows directory traversal path traversal LFI strings
20221003150289 20221003151153 zet/20221003151153/README.md 4
# windows
20221003150289 20221006213130 zet/20221006213130/README.md 2
# hacking / CTF platforms
20221003150289 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003150289 20221008221548 zet/20221008221548/README.md 4
# website
20221003150289 20221008221940 zet/20221008221940/README.md 8
# URL
20221003150289 20221014190057 zet/20221014190057/README.md 4
# kb file named kb/hacking/misc/web-server-default-webroots.md

next id 20221003150297
# fixing golang module errors go get fails
20221003150297 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150297 20221014190056 zet/20221014190056/README.md 4
# kb file named kb/hacking/misc/assorted-information.md
20221003150297 20221022210719 zet/20221022210719/README.md 5
# assorted information

next id 20221003150298
# fixing golang module errors cannot install module
20221003150298 20221003151274 zet/20221003151274/README.md 5
# install mandown
20221003150298 20221013194055 zet/20221013194055/README.md 4
# concept of installing something
20221003150298 20221014190056 zet/20221014190056/README.md 4
# kb file named kb/hacking/misc/assorted-information.md
20221003150298 20221022210719 zet/20221022210719/README.md 5
# assorted information

next id 20221003150299
# fixing golang module errors
20221003150299 20221003150296 zet/20221003150296/README.md 9
# fixing golang module errors no required module provides package
20221003150299 20221007062330 zet/20221007062330/README.md 4
# broken stuff to fix
20221003150299 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150299 20221014190056 zet/20221014190056/README.md 4
# kb file named kb/hacking/misc/assorted-information.md
20221003150299 20221022210719 zet/20221022210719/README.md 5
# assorted information

next id 20221003150306
# modify date with touch timestomping
20221003150306 20221003150305 zet/20221003150305/README.md 4
# modify date with touch timestomping set destination file date the same as source file date
20221003150306 20221003150352 zet/20221003150352/README.md 2
# fake set change system time for command
20221003150306 20221014190056 zet/20221014190056/README.md 4
# kb file named kb/hacking/misc/assorted-information.md
20221003150306 20221022210719 zet/20221022210719/README.md 5
# assorted information

next id 20221003150310
# burpsuite
20221003150310 20221003150308 zet/20221003150308/README.md 4
# burpsuite add header to forwarded requests, like X-Forwarded-For
20221003150310 20221003150309 zet/20221003150309/README.md 4
# burpsuite set scope to limit request catching
20221003150310 20221003151408 zet/20221003151408/README.md 65
# parse burpsuite saved request file and convert to python requests script for copying
20221003150310 20221014190056 zet/20221014190056/README.md 4
# kb file named kb/hacking/misc/assorted-information.md
20221003150310 20221022210719 zet/20221022210719/README.md 5
# assorted information

next id 20221003150312
# SMB
20221003150312 20221003150311 zet/20221003150311/README.md 2
# SMB fix `NT_STATUS_CONNECTION_DISCONNECTED` errors
20221003150312 20221003150600 zet/20221003150600/README.md 7
# impacket
20221003150312 20221003150838 zet/20221003150838/README.md 5
# scan SMB for vulnerabilities with nmap
20221003150312 20221003151035 zet/20221003151035/README.md 2
# hidden shares
20221003150312 20221003151198 zet/20221003151198/README.md 39
# SMB to try list
20221003150312 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150312 20221014164014 zet/20221014164014/README.md 4
# protocol for application communication
20221003150312 20221014190056 zet/20221014190056/README.md 4
# kb file named kb/hacking/misc/assorted-information.md
20221003150312 20221022210719 zet/20221022210719/README.md 5
# assorted information

next id 20221003150314
# default http config locations
20221003150314 20221003150313 zet/20221003150313/README.md 2
# default http config locations FreeBSD
20221003150314 20221014190056 zet/20221014190056/README.md 4
# kb file named kb/hacking/misc/assorted-information.md
20221003150314 20221022210719 zet/20221022210719/README.md 5
# assorted information

next id 20221003150316
# fastapi uvicorn put python webshells
20221003150316 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam

next id 20221003150318
# sophos

next id 20221003150319
# symantec

next id 20221003150320
# mcaffee

next id 20221003150321
# arctic wolf

next id 20221003150324
# vmware carbon black cloud

next id 20221003150325
# Microsoft Defender for Endpoint - enterprise protection
20221003150325 20221003150323 zet/20221003150323/README.md 2
# crowdstrike falcon
20221003150325 20221012152319 zet/20221012152319/README.md 4
# concept of company or organization

next id 20221003150326
# top tier endpoint protection AV defender
20221003150326 20221003150323 zet/20221003150323/README.md 2
# crowdstrike falcon

next id 20221003150340
# ansible
20221003150340 20221003150338 zet/20221003150338/README.md 2
# ansible exploiting playbook
20221003150340 20221003150339 zet/20221003150339/README.md 16
# ansible How does Ansible work?
20221003150340 20221014190054 zet/20221014190054/README.md 4
# kb file named kb/hacking/misc/ansible.md

next id 20221003150343
# wordpress
20221003150343 20221003150342 zet/20221003150342/README.md 4
# wordpress plugins
20221003150343 20221008213825 zet/20221008213825/README.md 15
# hacker concept of CMS - slang lingo for web app / service
20221003150343 20221014190051 zet/20221014190051/README.md 4
# kb file named kb/hacking/misc/database-cms-enum.md

next id 20221003150346
# SSH brute force
20221003150346 20221003150249 zet/20221003150249/README.md 2
# Apache guacamole RDP VNC SSH in web browser default creds
20221003150346 20221003150344 zet/20221003150344/README.md 4
# SSH brute force old key exchange algorithms
20221003150346 20221003150345 zet/20221003150345/README.md 7
# SSH brute force command shortlist from hacktricks
20221003150346 20221003150805 zet/20221003150805/README.md 4
# brute force default credentials ssh
20221003150346 20221003150823 zet/20221003150823/README.md 4
# hydra ssh brute force
20221003150346 20221003151174 zet/20221003151174/README.md 14
# SSH to try list
20221003150346 20221003151210 zet/20221003151210/README.md 88
# linux privilege escalation
20221003150346 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150346 20221014190050 zet/20221014190050/README.md 4
# kb file named kb/hacking/misc/bruteforcing-tools.md
20221003150346 20221015014643 zet/20221015014643/README.md 12
# overengineering and overthinking

next id 20221003150350
# troubleshooting fix error
20221003150350 20221003150348 zet/20221003150348/README.md 288
# troubleshooting fix error ValueError: unsupported hash type MD4 python hashlib openssl conf
20221003150350 20221003150349 zet/20221003150349/README.md 5
# troubleshooting fix error "sign_and_send_pubkey: no mutual signature supported"
20221003150350 20221007062330 zet/20221007062330/README.md 4
# broken stuff to fix
20221003150350 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150350 20221014190048 zet/20221014190048/README.md 4
# kb file named kb/hacking/misc/troubleshoot-error-messages.md
20221003150350 20221015172248 zet/20221015172248/README.md 26
# how to fix ubuntu gnome not remembering screen rotation on One Mix netbook?
20221003150350 20221016161034 zet/20221016161034/README.md 7
# one mix netbook standby issues in linux

next id 20221003150355
# .NET decompiler reverse engineering C# managed EXE DLL binaries
20221003150355 20221003150354 zet/20221003150354/README.md 2
# .NET decompiler reverse engineering C# managed EXE DLL binaries modify rebuild and recompile .NET assemblies
20221003150355 20221008194048 zet/20221008194048/README.md 40
# good DLLs to hide in for sideloading
20221003150355 20221008212519 zet/20221008212519/README.md 2
# programming language
20221003150355 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md
20221003150355 20221015014643 zet/20221015014643/README.md 12
# overengineering and overthinking

next id 20221003150360
# windows run commands as other user with credentials
20221003150360 20221003150359 zet/20221003150359/README.md 4
# windows run commands as other user with credentials switch users on windows host with RunasCs with no WinRM remote management access
20221003150360 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150363
# portable TCP port scanner bash only
20221003150363 20221003150362 zet/20221003150362/README.md 6
# portable TCP port scanner bash only spookyscan
20221003150363 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150364
# portable TCP port scanner
20221003150364 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150369
# dump credentials from browsers chromium chrome
20221003150369 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150370
# dump credentials from browsers chromium
20221003150370 20221003150368 zet/20221003150368/README.md 2
# dump credentials from browsers chromium edge
20221003150370 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150371
# dump credentials from browsers
20221003150371 20221003150367 zet/20221003150367/README.md 4
# dump credentials from browsers firefox
20221003150371 20221003150449 zet/20221003150449/README.md 4
# keepass CLI tool open and edit keepass databases
20221003150371 20221003151175 zet/20221003151175/README.md 17
# EVERYTHING - common to try list
20221003150371 20221013185837 zet/20221013185837/README.md 5
# HKCU registry hive ntuser.dat
20221003150371 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150374
# volatility framework analyze dump files of volatile RAM file type "MS Windows 64bit crash dump, full dump, XXX pages"
20221003150374 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150375
# volatility framework analyze dump files of volatile RAM
20221003150375 20221003150373 zet/20221003150373/README.md 7
# volatility framework analyze dump files of volatile RAM .dmp .img
20221003150375 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150376
# volatility framework
20221003150376 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150378
# oracle database attacking tool odat escalate database account to DBA
20221003150378 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150379
# oracle database attacking tool odat enumerate users
20221003150379 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150380
# oracle database attacking tool odat
20221003150380 20221003150377 zet/20221003150377/README.md 3
# oracle database attacking tool odat execute system commands
20221003150380 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150382
# threatcheck help obfuscate windows executable strings evade windows antivirus detection (defender)
20221003150382 20221003150381 zet/20221003150381/README.md 3
# threatcheck help obfuscate windows executable strings evade windows antivirus detection (defender) identify and pinpoints that exact bytes that the target antivirus engine will flag on
20221003150382 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150383
# threatcheck help obfuscate windows executable strings
20221003150383 20221010064819 zet/20221010064819/README.md 31
# locating the origin of files by hash to determine version
20221003150383 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150386
# krbrelayx dnstool.py Add/modify/delete Active Directory Integrated DNS records via LDAP.
20221003150386 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150387
# krbrelayx addspn.py This tool can add/remove/modify Service Principal Names on accounts in AD over LDAP.
20221003150387 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150388
# krbrelayx Kerberos relaying and unconstrained delegation abuse toolkit
20221003150388 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150389
# krbrelayx
20221003150389 20221003150384 zet/20221003150384/README.md 3
# krbrelayx krbrelayx.py Kerberos relaying and Unconstrained delegation abuse
20221003150389 20221003150385 zet/20221003150385/README.md 2
# krbrelayx printerbug.py Simple tool to trigger SpoolService bug via RPC backconnect. Similar to dementor.py
20221003150389 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150391
# file backup fuzzer
20221003150391 20221003150390 zet/20221003150390/README.md 2
# file backup fuzzer generate wordlists from filenames
20221003150391 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150419
# text cipher encryption decryption tools
20221003150419 20221003150251 zet/20221003150251/README.md 2
# diffie-hellman key exchange
20221003150419 20221003150392 zet/20221003150392/README.md 29
# text cipher encryption decryption tools Text Manipulator
20221003150419 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150421
# kerberos attack on windows host Constrained delegation abuse
20221003150421 20221003150425 zet/20221003150425/README.md 2
# kerberos attack on windows host
20221003150421 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003150421 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150422
# kerberos attack on windows host ticket attacks extraction and harvesting
20221003150422 20221003150425 zet/20221003150425/README.md 2
# kerberos attack on windows host
20221003150422 20221003150748 zet/20221003150748/README.md 6
# impacket kerberos commands
20221003150422 20221013035124 zet/20221013035124/README.md 4
# problems with markdown conversion process
20221003150422 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150423
# kerberos attack on windows host ticket attacks forgery
20221003150423 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150424
# kerberos attack on windows host ticket attacks
20221003150424 20221003150425 zet/20221003150425/README.md 2
# kerberos attack on windows host
20221003150424 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md
20221003150424 20221019150132 zet/20221019150132/README.md 9
# kerberos AD commands

next id 20221003150429
# generate wordlists username anarchy, generate from lists of names, from country and locale output all formats top 10k names from facebook
20221003150429 20221003150430 zet/20221003150430/README.md 5
# generate wordlists username anarchy, generate from lists of names, from country and locale output all formats
20221003150429 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150433
# generate wordlists
20221003150433 20221003150427 zet/20221003150427/README.md 7
# generate wordlists bopscrk people OSINT custom wordlists specific to person
20221003150433 20221003150431 zet/20221003150431/README.md 3
# generate wordlists username anarchy, generate from lists of names, from country and locale
20221003150433 20221003150432 zet/20221003150432/README.md 3
# generate wordlists namemash - simple
20221003150433 20221008215325 zet/20221008215325/README.md 4
# password
20221003150433 20221014190047 zet/20221014190047/README.md 4
# kb file named kb/hacking/misc/important-repositories-tools.md

next id 20221003150448
# poppler utils PDF parsing
20221003150448 20221003150447 zet/20221003150447/README.md 4
# poppler utils PDF parsing pdftotext pdftohtml pdfinfo pdfimages
20221003150448 20221014190045 zet/20221014190045/README.md 4
# kb file named kb/hacking/misc/tools-and-apt-packages.md

next id 20221003150452
# java decompiler JD-GUI analyze war file
20221003150452 20221014190045 zet/20221014190045/README.md 4
# kb file named kb/hacking/misc/tools-and-apt-packages.md

next id 20221003150453
# java decompiler JD-GUI analyze
20221003150453 20221003150451 zet/20221003150451/README.md 7
# java decompiler JD-GUI analyze jar file
20221003150453 20221012153843 zet/20221012153843/README.md 14
# confluent.io
20221003150453 20221014190045 zet/20221014190045/README.md 4
# kb file named kb/hacking/misc/tools-and-apt-packages.md

next id 20221003150454
# java decompiler JD-GUI
20221003150454 20221012153843 zet/20221012153843/README.md 14
# confluent.io
20221003150454 20221012154059 zet/20221012154059/README.md 8
# scala
20221003150454 20221014190045 zet/20221014190045/README.md 4
# kb file named kb/hacking/misc/tools-and-apt-packages.md

next id 20221003150469
# powershell tricks browse and edit registry
20221003150469 20221003150467 zet/20221003150467/README.md 5
# powershell tricks browse and edit registry read registry values
20221003150469 20221003150468 zet/20221003150468/README.md 5
# powershell tricks browse and edit registry set registry values
20221003150469 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150469 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150469 20221014142356 zet/20221014142356/README.md 4
# concept of a neat trick or solution
20221003150469 20221014190039 zet/20221014190039/README.md 4
# kb file named kb/hacking/powershell/powershell-tricks.md

next id 20221003150475
# powershell tricks run powershell commands as another user
20221003150475 20221003150472 zet/20221003150472/README.md 6
# powershell tricks run powershell commands as another user on remote machine with impersonated token
20221003150475 20221003150473 zet/20221003150473/README.md 7
# powershell tricks run powershell commands as another user with RunasCs
20221003150475 20221003150474 zet/20221003150474/README.md 9
# powershell tricks run powershell commands as another user with SecureString credential
20221003150475 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150475 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150475 20221014190039 zet/20221014190039/README.md 4
# kb file named kb/hacking/powershell/powershell-tricks.md

next id 20221003150476
# powershell tricks
20221003150476 20221003150466 zet/20221003150466/README.md 4
# powershell tricks convert guid to string
20221003150476 20221003150470 zet/20221003150470/README.md 8
# powershell tricks mount smb share as drive "letter"
20221003150476 20221003150479 zet/20221003150479/README.md 4
# general enumeration what commands are available
20221003150476 20221003150480 zet/20221003150480/README.md 4
# general enumeration get processes
20221003150476 20221003150481 zet/20221003150481/README.md 4
# general enumeration get list of filepaths recursively
20221003150476 20221003150485 zet/20221003150485/README.md 13
# active directory get GMSA service account properties get GMSA password and run commands
20221003150476 20221003150486 zet/20221003150486/README.md 4
# active directory get GMSA service account properties
20221003150476 20221003150487 zet/20221003150487/README.md 4
# active directory get user account
20221003150476 20221006214729 zet/20221006214729/README.md 5
# alh4zr3d
20221003150476 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150476 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150476 20221014142356 zet/20221014142356/README.md 4
# concept of a neat trick or solution
20221003150476 20221014190039 zet/20221014190039/README.md 4
# kb file named kb/hacking/powershell/powershell-tricks.md

next id 20221003150483
# active directory get GMSA service account properties get GMSA password and run commands fix missing ConvertFrom-AdManagedPasswordBlob TODO: add steps to install from zip
20221003150483 20221003150484 zet/20221003150484/README.md 7
# active directory get GMSA service account properties get GMSA password and run commands fix missing ConvertFrom-AdManagedPasswordBlob
20221003150483 20221007062330 zet/20221007062330/README.md 4
# broken stuff to fix
20221003150483 20221008042814 zet/20221008042814/README.md 2
# WIP
20221003150483 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150483 20221013035124 zet/20221013035124/README.md 4
# problems with markdown conversion process
20221003150483 20221014190037 zet/20221014190037/README.md 5
# kb file named kb/hacking/powershell/powershell-enumeration-commands.md

next id 20221003150488
# active directory
20221003150488 20221003150486 zet/20221003150486/README.md 4
# active directory get GMSA service account properties
20221003150488 20221003150487 zet/20221003150487/README.md 4
# active directory get user account
20221003150488 20221003150628 zet/20221003150628/README.md 6
# LDAP enumeration anonymous nmap scripts
20221003150488 20221003151172 zet/20221003151172/README.md 83
# active directory domain to try list
20221003150488 20221003151201 zet/20221003151201/README.md 4
# RDP
20221003150488 20221003151218 zet/20221003151218/README.md 5
# send email over SMTP from command line with swaks
20221003150488 20221003151241 zet/20221003151241/README.md 5
# ping whole subnet of IPs in a loop to fingerprint OS versions
20221003150488 20221006214729 zet/20221006214729/README.md 5
# alh4zr3d
20221003150488 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003150488 20221008215530 zet/20221008215530/README.md 5
# username
20221003150488 20221009001740 zet/20221009001740/README.md 3
# OSCP exam
20221003150488 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150488 20221011092959 zet/20221011092959/README.md 4
# conda active directory hacking videos
20221003150488 20221013185656 zet/20221013185656/README.md 4
# ntds.dit file in window AD domain controllers
20221003150488 20221014190037 zet/20221014190037/README.md 5
# kb file named kb/hacking/powershell/powershell-enumeration-commands.md

next id 20221003150490
# html template upload file
20221003150490 20221003150489 zet/20221003150489/README.md 13
# html template upload file http form POST
20221003150490 20221008221822 zet/20221008221822/README.md 3
# www - the web
20221003150490 20221014190036 zet/20221014190036/README.md 4
# kb file named kb/hacking/web/html.templates.md
20221003150490 20221014213613 zet/20221014213613/README.md 4
# boilerplate code template

next id 20221003150491
# html template
20221003150491 20221008221822 zet/20221008221822/README.md 3
# www - the web
20221003150491 20221014190036 zet/20221014190036/README.md 4
# kb file named kb/hacking/web/html.templates.md
20221003150491 20221014213559 zet/20221014213559/README.md 4
# concept of a snippet of code
20221003150491 20221014213613 zet/20221014213613/README.md 4
# boilerplate code template

next id 20221003150503
# pwntools
20221003150503 20221003150501 zet/20221003150501/README.md 7
# pwntools FmtStr automated format string exploitation
20221003150503 20221003150502 zet/20221003150502/README.md 5
# pwntools synchronizing output sending wait until receive
20221003150503 20221003150515 zet/20221003150515/README.md 3
# pwntools gdb debugging terminal
20221003150503 20221003150518 zet/20221003150518/README.md 13
# pwntools sigreturn
20221003150503 20221003150523 zet/20221003150523/README.md 3
# heap exploit resources
20221003150503 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150503 20221014190022 zet/20221014190022/README.md 4
# kb file named kb/hacking/pwn/pwntools.md

next id 20221003150507
# python pwn tricks convert little endian bytes
20221003150507 20221003150505 zet/20221003150505/README.md 5
# python pwn tricks convert little endian bytes to floating point
20221003150507 20221003150506 zet/20221003150506/README.md 4
# python pwn tricks convert little endian bytes to int
20221003150507 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150507 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150507 20221014142356 zet/20221014142356/README.md 4
# concept of a neat trick or solution
20221003150507 20221014190021 zet/20221014190021/README.md 4
# kb file named kb/hacking/pwn/python-tricks.md

next id 20221003150508
# python pwn tricks convert
20221003150508 20221003150504 zet/20221003150504/README.md 4
# python pwn tricks convert hex to int
20221003150508 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150508 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150508 20221014142356 zet/20221014142356/README.md 4
# concept of a neat trick or solution
20221003150508 20221014190021 zet/20221014190021/README.md 4
# kb file named kb/hacking/pwn/python-tricks.md

next id 20221003150509
# python pwn tricks
20221003150509 20221003150515 zet/20221003150515/README.md 3
# pwntools gdb debugging terminal
20221003150509 20221003150518 zet/20221003150518/README.md 13
# pwntools sigreturn
20221003150509 20221003150523 zet/20221003150523/README.md 3
# heap exploit resources
20221003150509 20221003150527 zet/20221003150527/README.md 5
# generate reverse shell shellcode payload for pwn
20221003150509 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150509 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150509 20221014142356 zet/20221014142356/README.md 4
# concept of a neat trick or solution
20221003150509 20221014190021 zet/20221014190021/README.md 4
# kb file named kb/hacking/pwn/python-tricks.md
20221003150509 20221015005745 zet/20221015005745/README.md 5
# python coding

next id 20221003150511
# pwn commands / tricks patchelf ld paths
20221003150511 20221003150510 zet/20221003150510/README.md 4
# pwn commands / tricks patchelf ld paths use custom ld version and library path
20221003150511 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150511 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150511 20221014142356 zet/20221014142356/README.md 4
# concept of a neat trick or solution
20221003150511 20221014190019 zet/20221014190019/README.md 4
# kb file named kb/hacking/pwn/tricks.md

next id 20221003150512
# pwn commands / tricks
20221003150512 20221003150515 zet/20221003150515/README.md 3
# pwntools gdb debugging terminal
20221003150512 20221003150518 zet/20221003150518/README.md 13
# pwntools sigreturn
20221003150512 20221003150523 zet/20221003150523/README.md 3
# heap exploit resources
20221003150512 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150512 20221014142356 zet/20221014142356/README.md 4
# concept of a neat trick or solution
20221003150512 20221014190019 zet/20221014190019/README.md 4
# kb file named kb/hacking/pwn/tricks.md

next id 20221003150517
# binary analysis
20221003150517 20221003150192 zet/20221003150192/README.md 10
# convert package type to deb rpm slp lsb tgz
20221003150517 20221003150330 zet/20221003150330/README.md 5
# identifying type of encryption of unknown ciphertext
20221003150517 20221003150516 zet/20221003150516/README.md 6
# binary analysis golang
20221003150517 20221003151213 zet/20221003151213/README.md 7
# got leaked files to try list
20221003150517 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150517 20221014190016 zet/20221014190016/README.md 4
# kb file named kb/hacking/pwn/binary-analysis.md

next id 20221003150522
# calling conventions
20221003150522 20221003150520 zet/20221003150520/README.md 5
# calling conventions x64 windows C style
20221003150522 20221003150521 zet/20221003150521/README.md 4
# calling conventions x64 linux C style
20221003150522 20221014190013 zet/20221014190013/README.md 4
# kb file named kb/hacking/pwn/calling-conventions.md

next id 20221003150525
# make executable binary with input shellcode
20221003150525 20221003150524 zet/20221003150524/README.md 4
# make executable binary with input shellcode msfvenom
20221003150525 20221014190010 zet/20221014190010/README.md 4
# kb file named kb/hacking/pwn/shellcode-to-executable.md

next id 20221003150529
# gdb commands
20221003150529 20221003150528 zet/20221003150528/README.md 4
# gdb commands debug step into / follow child process
20221003150529 20221008081231 zet/20221008081231/README.md 4
# debugging
20221003150529 20221014190005 zet/20221014190005/README.md 4
# kb file named kb/hacking/pwn/gdb-commands.md

next id 20221003150535
# immunity debugger mona commands search for opcode string jmp esp
20221003150535 20221003150533 zet/20221003150533/README.md 5
# immunity debugger mona commands search for opcode string jmp esp inside module
20221003150535 20221003150534 zet/20221003150534/README.md 4
# immunity debugger mona commands search for opcode string jmp esp in exe
20221003150535 20221014190002 zet/20221014190002/README.md 4
# kb file named kb/hacking/pwn/basic-win-pwn.md

next id 20221003150537
# immunity debugger mona commands
20221003150537 20221003150536 zet/20221003150536/README.md 4
# immunity debugger mona commands list loaded modules and security flags
20221003150537 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003150537 20221008081231 zet/20221008081231/README.md 4
# debugging
20221003150537 20221014190002 zet/20221014190002/README.md 4
# kb file named kb/hacking/pwn/basic-win-pwn.md

next id 20221003150539
# simple binary exploits payload generation
20221003150539 20221003150538 zet/20221003150538/README.md 2
# simple binary exploits payload generation changing architecture
20221003150539 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150539 20221014190002 zet/20221014190002/README.md 4
# kb file named kb/hacking/pwn/basic-win-pwn.md

next id 20221003150543
# simple binary exploits python exploit scripts
20221003150543 20221003150540 zet/20221003150540/README.md 8
# simple binary exploits python exploit scripts pwntools flat pack buffer offsets
20221003150543 20221003150541 zet/20221003150541/README.md 5
# simple binary exploits python exploit scripts all bad characters
20221003150543 20221003150542 zet/20221003150542/README.md 4
# simple binary exploits python exploit scripts import pwntools
20221003150543 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150543 20221014190002 zet/20221014190002/README.md 4
# kb file named kb/hacking/pwn/basic-win-pwn.md

next id 20221003150545
# simple binary exploits pattern offset finding
20221003150545 20221003150544 zet/20221003150544/README.md 6
# simple binary exploits pattern offset finding create pattern with length with pattern create
20221003150545 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150545 20221014190002 zet/20221014190002/README.md 4
# kb file named kb/hacking/pwn/basic-win-pwn.md

next id 20221003150548
# simple binary exploits
20221003150548 20221003150547 zet/20221003150547/README.md 6
# simple binary exploits jmp esp instruction FF E4
20221003150548 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150548 20221013175128 zet/20221013175128/README.md 4
# preparing exploit payloads
20221003150548 20221014190002 zet/20221014190002/README.md 4
# kb file named kb/hacking/pwn/basic-win-pwn.md

next id 20221003150553
# PhpmyAdmin write shell
20221003150553 20221003150552 zet/20221003150552/README.md 5
# PhpmyAdmin write shell Windows
20221003150553 20221003150559 zet/20221003150559/README.md 4
# Kali Default PHP CMD Shell
20221003150553 20221014190001 zet/20221014190001/README.md 4
# kb file named kb/hacking/common-commands.md

next id 20221003150573
# php type juggling string and number exponent type confusion
20221003150573 20221003150572 zet/20221003150572/README.md 11
# php type juggling string and number exponent type confusion vulnerable hash prefix `0e` md5 sha1
20221003150573 20221014185958 zet/20221014185958/README.md 4
# kb file named kb/hacking/php/type-juggling.md

next id 20221003150575
# php type juggling methodology
20221003150575 20221003150574 zet/20221003150574/README.md 4
# php type juggling methodology http post data
20221003150575 20221014185958 zet/20221014185958/README.md 4
# kb file named kb/hacking/php/type-juggling.md

next id 20221003150576
# php type juggling
20221003150576 20221008042814 zet/20221008042814/README.md 2
# WIP
20221003150576 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150576 20221014185958 zet/20221014185958/README.md 4
# kb file named kb/hacking/php/type-juggling.md

next id 20221003150584
# php code convert human readable time to unix epoch timestamp
20221003150584 20221003150583 zet/20221003150583/README.md 5
# php code convert human readable time to unix epoch timestamp apache HTTP Date header
20221003150584 20221003150590 zet/20221003150590/README.md 6
# php code examples
20221003150584 20221014185953 zet/20221014185953/README.md 4
# kb file named kb/hacking/php/PHP-quick-command-reference.md

next id 20221003150592
# php
20221003150592 20221003150240 zet/20221003150240/README.md 2
# analyze php source code for malicious code and things that look like webshells
20221003150592 20221003150557 zet/20221003150557/README.md 2
# WhiteWinterWolf Webshell
20221003150592 20221003150559 zet/20221003150559/README.md 4
# Kali Default PHP CMD Shell
20221003150592 20221003150571 zet/20221003150571/README.md 3
# PHP unserialize payload gadget chains
20221003150592 20221003150590 zet/20221003150590/README.md 6
# php code examples
20221003150592 20221003150591 zet/20221003150591/README.md 4
# php run as interactive shell
20221003150592 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150592 20221014185953 zet/20221014185953/README.md 4
# kb file named kb/hacking/php/PHP-quick-command-reference.md

next id 20221003150594
# generating enumeration wordlists
20221003150594 20221003150593 zet/20221003150593/README.md 4
# generating enumeration wordlists exfiltrated passwd usernames to ssh key id_rsa fuzz list
20221003150594 20221014185952 zet/20221014185952/README.md 4
# kb file named kb/hacking/commands/enumeration-util.md

next id 20221003150614
# smbclient shell
20221003150614 20221003150612 zet/20221003150612/README.md 9
# smbclient shell recursive get all files
20221003150614 20221003150613 zet/20221003150613/README.md 5
# smbclient shell recursive list directory
20221003150614 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150614 20221014185947 zet/20221014185947/README.md 4
# kb file named kb/hacking/commands/smbclient-commands.md

next id 20221003150620
# PureFTP Get Service Ready
20221003150620 20221014185946 zet/20221014185946/README.md 4
# kb file named kb/hacking/commands/pureftp-commands.md

next id 20221003150623
# PureFTP
20221003150623 20221003150615 zet/20221003150615/README.md 4
# PureFTP Execute Script (on Victim)
20221003150623 20221003150616 zet/20221003150616/README.md 9
# PureFTP Create FTP Script (On Victim)
20221003150623 20221003150617 zet/20221003150617/README.md 4
# PureFTP Restart Service
20221003150623 20221003150618 zet/20221003150618/README.md 4
# PureFTP Commit Changes
20221003150623 20221003150619 zet/20221003150619/README.md 4
# PureFTP Reset Password
20221003150623 20221003150621 zet/20221003150621/README.md 14
# PureFTP Create setupftp.sh Execute The Script
20221003150623 20221003150622 zet/20221003150622/README.md 4
# PureFTP Install
20221003150623 20221003151179 zet/20221003151179/README.md 8
# FTP to try list
20221003150623 20221008212802 zet/20221008212802/README.md 2
# software program
20221003150623 20221014185946 zet/20221014185946/README.md 4
# kb file named kb/hacking/commands/pureftp-commands.md

next id 20221003150625
# LDAP enumeration authenticated
20221003150625 20221003150624 zet/20221003150624/README.md 5
# LDAP enumeration authenticated ldapdomaindump tool
20221003150625 20221014185944 zet/20221014185944/README.md 4
# kb file named kb/hacking/commands/ldap.md

next id 20221003150629
# LDAP enumeration anonymous
20221003150629 20221003150627 zet/20221003150627/README.md 9
# LDAP enumeration anonymous python
20221003150629 20221003150628 zet/20221003150628/README.md 6
# LDAP enumeration anonymous nmap scripts
20221003150629 20221013173355 zet/20221013173355/README.md 4
# enumeration - the process of enumerating a target
20221003150629 20221014185944 zet/20221014185944/README.md 4
# kb file named kb/hacking/commands/ldap.md

next id 20221003150630
# LDAP enumeration
20221003150630 20221003150358 zet/20221003150358/README.md 2
# jxplorer connect to LDAP GUI access
20221003150630 20221013173355 zet/20221013173355/README.md 4
# enumeration - the process of enumerating a target
20221003150630 20221014185944 zet/20221014185944/README.md 4
# kb file named kb/hacking/commands/ldap.md

next id 20221003150634
# smbmap default enumeration
20221003150634 20221003150633 zet/20221003150633/README.md 4
# smbmap default enumeration as guest
20221003150634 20221013173355 zet/20221013173355/README.md 4
# enumeration - the process of enumerating a target
20221003150634 20221014185940 zet/20221014185940/README.md 4
# kb file named kb/hacking/commands/smbmap.md

next id 20221003150635
# smbmap
20221003150635 20221014185940 zet/20221014185940/README.md 4
# kb file named kb/hacking/commands/smbmap.md

next id 20221003150638
# nmap check for mountable NFS shares
20221003150638 20221003150637 zet/20221003150637/README.md 4
# nmap check for mountable NFS shares test access
20221003150638 20221014185938 zet/20221014185938/README.md 4
# kb file named kb/hacking/commands/nmap-command.md

next id 20221003150646
# nmap flags extra fast options
20221003150646 20221003150647 zet/20221003150647/README.md 8
# nmap flags
20221003150646 20221014185938 zet/20221014185938/README.md 4
# kb file named kb/hacking/commands/nmap-command.md

next id 20221003150648
# nmap
20221003150648 20221003150117 zet/20221003150117/README.md 16
# OSI networking model
20221003150648 20221003150636 zet/20221003150636/README.md 4
# nmap run all service enumeration on a port
20221003150648 20221003150639 zet/20221003150639/README.md 4
# nmap bruteforce HTTP authentication (including NTLM)
20221003150648 20221003150640 zet/20221003150640/README.md 4
# nmap run "all" enumeration and scripts
20221003150648 20221003150641 zet/20221003150641/README.md 4
# nmap over proxychains using socks proxy
20221003150648 20221003150642 zet/20221003150642/README.md 4
# nmap common ports command
20221003150648 20221003150644 zet/20221003150644/README.md 4
# nmap all ports command
20221003150648 20221003150647 zet/20221003150647/README.md 8
# nmap flags
20221003150648 20221003151016 zet/20221003151016/README.md 5
# nmap scripts search by type
20221003150648 20221003151258 zet/20221003151258/README.md 9
# scan for ports to connect back on through firewall
20221003150648 20221014185938 zet/20221014185938/README.md 4
# kb file named kb/hacking/commands/nmap-command.md
20221003150648 20221017180938 zet/20221017180938/README.md 4
# hacking or enumeration tool

next id 20221003150650
# kubernetes kubectl
20221003150650 20221003150649 zet/20221003150649/README.md 4
# kubernetes kubectl enumerate permissions
20221003150650 20221014185936 zet/20221014185936/README.md 4
# kb file named kb/hacking/commands/kubernetes.md

next id 20221003150651
# kubernetes
20221003150651 20221006033248 zet/20221006033248/README.md 8
# rwxrob
20221003150651 20221010142810 zet/20221010142810/README.md 180
# what is the right and secure way to develop with docker
20221003150651 20221014185936 zet/20221014185936/README.md 4
# kb file named kb/hacking/commands/kubernetes.md

next id 20221003150659
# wfuzz
20221003150659 20221003150652 zet/20221003150652/README.md 5
# wfuzz host header pollution
20221003150659 20221003150653 zet/20221003150653/README.md 5
# wfuzz authenticated fuzzing parameter names
20221003150659 20221003150654 zet/20221003150654/README.md 5
# wfuzz fuzzing parameter names
20221003150659 20221003150655 zet/20221003150655/README.md 4
# wfuzz fuzzing subdomains
20221003150659 20221003150656 zet/20221003150656/README.md 2
# wfuzz recursive path discovery depth
20221003150659 20221003150657 zet/20221003150657/README.md 5
# wfuzz dirbusting really really large directories wordlist
20221003150659 20221003150658 zet/20221003150658/README.md 7
# wfuzz dirbusting
20221003150659 20221003150812 zet/20221003150812/README.md 5
# wfuzz fuzzing details
20221003150659 20221003151237 zet/20221003151237/README.md 4
# wfuzz identify files containing version info like README and changelog
20221003150659 20221008212802 zet/20221008212802/README.md 2
# software program
20221003150659 20221014185935 zet/20221014185935/README.md 4
# kb file named kb/hacking/commands/wfuzz-commands.md
20221003150659 20221017180938 zet/20221017180938/README.md 4
# hacking or enumeration tool

next id 20221003150662
# data analysis commands
20221003150662 20221003150192 zet/20221003150192/README.md 10
# convert package type to deb rpm slp lsb tgz
20221003150662 20221003150294 zet/20221003150294/README.md 4
# wireshark TLS1.2 handshake packet
20221003150662 20221003150330 zet/20221003150330/README.md 5
# identifying type of encryption of unknown ciphertext
20221003150662 20221003150660 zet/20221003150660/README.md 4
# data analysis commands binwalk find and extract LZMA zip streams quickly
20221003150662 20221003150661 zet/20221003150661/README.md 6
# data analysis commands dd copy from offset
20221003150662 20221003151175 zet/20221003151175/README.md 17
# EVERYTHING - common to try list
20221003150662 20221003151300 zet/20221003151300/README.md 4
# drop newlines from stream with tr
20221003150662 20221007181438 zet/20221007181438/README.md 12
# directories and bash scripts as commands
20221003150662 20221008050923 zet/20221008050923/README.md 16
# tmux buffers as bash script pipe debug file buffer
20221003150662 20221008195148 zet/20221008195148/README.md 8
# seclists etc files project
20221003150662 20221012153512 zet/20221012153512/README.md 5
# database
20221003150662 20221014185933 zet/20221014185933/README.md 4
# kb file named kb/hacking/commands/binary-data-analysis.md
20221003150662 20221017172946 zet/20221017172946/README.md 4
# LAN attacks
20221003150662 20221019143615 zet/20221019143615/README.md 4
# data concept

next id 20221003150671
# crackmapexec cme commands test password username arguments or files
20221003150671 20221003150673 zet/20221003150673/README.md 11
# crackmapexec cme commands
20221003150671 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150671 20221014185929 zet/20221014185929/README.md 4
# kb file named kb/hacking/commands/crackmapexec-commands.md

next id 20221003150683
# web enumeration quick commands
20221003150683 20221003150682 zet/20221003150682/README.md 4
# web enumeration quick commands forms
20221003150683 20221003150874 zet/20221003150874/README.md 4
# nikto command
20221003150683 20221003151241 zet/20221003151241/README.md 5
# ping whole subnet of IPs in a loop to fingerprint OS versions
20221003150683 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003150683 20221009001740 zet/20221009001740/README.md 3
# OSCP exam
20221003150683 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150683 20221014185924 zet/20221014185924/README.md 4
# kb file named kb/hacking/commands/web-enumeration-commands.md

next id 20221003150689
# wpscan initial database exports
20221003150689 20221014185921 zet/20221014185921/README.md 4
# kb file named kb/hacking/commands/wpscan-command.md

next id 20221003150690
# wpscan initial config backups
20221003150690 20221014185921 zet/20221014185921/README.md 4
# kb file named kb/hacking/commands/wpscan-command.md

next id 20221003150691
# wpscan initial vulnerable themes
20221003150691 20221014185921 zet/20221014185921/README.md 4
# kb file named kb/hacking/commands/wpscan-command.md

next id 20221003150692
# wpscan initial all plugins passive scan
20221003150692 20221014185921 zet/20221014185921/README.md 4
# kb file named kb/hacking/commands/wpscan-command.md

next id 20221003150693
# wpscan initial
20221003150693 20221003150687 zet/20221003150687/README.md 4
# wpscan initial aggressive plugins-detection
20221003150693 20221003150688 zet/20221003150688/README.md 4
# wpscan initial enumerate user id range
20221003150693 20221003151188 zet/20221003151188/README.md 9
# HTTP found CMS
20221003150693 20221014185921 zet/20221014185921/README.md 4
# kb file named kb/hacking/commands/wpscan-command.md

next id 20221003150694
# wpscan
20221003150694 20221003150686 zet/20221003150686/README.md 5
# wpscan brute force users file and password list
20221003150694 20221008213825 zet/20221008213825/README.md 15
# hacker concept of CMS - slang lingo for web app / service
20221003150694 20221013035124 zet/20221013035124/README.md 4
# problems with markdown conversion process
20221003150694 20221014185921 zet/20221014185921/README.md 4
# kb file named kb/hacking/commands/wpscan-command.md
20221003150694 20221017180938 zet/20221017180938/README.md 4
# hacking or enumeration tool

next id 20221003150709
# sqlmap
20221003150709 20221003150699 zet/20221003150699/README.md 4
# sqlmap with burp request Get A Reverse Shell (MySQL)
20221003150709 20221003150700 zet/20221003150700/README.md 4
# sqlmap with burp request Test All (Default Settings, High Stress)
20221003150709 20221003150701 zet/20221003150701/README.md 4
# sqlmap with burp request Test All (Default Settings)
20221003150709 20221003150702 zet/20221003150702/README.md 4
# sqlmap Test All (Default Settings, High Stress)
20221003150709 20221003150703 zet/20221003150703/README.md 4
# sqlmap Test All (Default Settings)
20221003150709 20221003150704 zet/20221003150704/README.md 2
# sqlmap search string response on site for successful injection
20221003150709 20221003150706 zet/20221003150706/README.md 3
# sqlmap custom injection marker
20221003150709 20221003150707 zet/20221003150707/README.md 3
# sqlmap level and risk options
20221003150709 20221003150708 zet/20221003150708/README.md 2
# sqlmap result output data file location
20221003150709 20221003151184 zet/20221003151184/README.md 22
# HTTP found login form
20221003150709 20221003151186 zet/20221003151186/README.md 17
# HTTP API and POST endpoints
20221003150709 20221003151192 zet/20221003151192/README.md 48
# HTTP to try list
20221003150709 20221009014200 zet/20221009014200/README.md 2
# concept of a command
20221003150709 20221014185918 zet/20221014185918/README.md 4
# kb file named kb/hacking/commands/sqlmap-commands.md
20221003150709 20221017180938 zet/20221017180938/README.md 4
# hacking or enumeration tool

next id 20221003150714
# packet capture with tcpdump watch traffic
20221003150714 20221003150712 zet/20221003150712/README.md 4
# packet capture with tcpdump watch traffic print packet data contents
20221003150714 20221003150713 zet/20221003150713/README.md 4
# packet capture with tcpdump watch traffic print IP and port
20221003150714 20221014185917 zet/20221014185917/README.md 4
# kb file named kb/hacking/commands/packet-capture.md

next id 20221003150716
# packet capture with tcpdump
20221003150716 20221003150294 zet/20221003150294/README.md 4
# wireshark TLS1.2 handshake packet
20221003150716 20221003150631 zet/20221003150631/README.md 7
# listen for pings with tcpdump
20221003150716 20221003150715 zet/20221003150715/README.md 4
# packet capture with tcpdump log data to pcap file
20221003150716 20221003150717 zet/20221003150717/README.md 5
# packet capture
20221003150716 20221014185917 zet/20221014185917/README.md 4
# kb file named kb/hacking/commands/packet-capture.md
20221003150716 20221017172946 zet/20221017172946/README.md 4
# LAN attacks

next id 20221003150720
# curl
20221003150720 20221003150718 zet/20221003150718/README.md 5
# curl upload a file
20221003150720 20221003150719 zet/20221003150719/README.md 7
# curl scan ports for websites through http proxy
20221003150720 20221009014200 zet/20221009014200/README.md 2
# concept of a command
20221003150720 20221014185915 zet/20221014185915/README.md 4
# kb file named kb/hacking/commands/curl.md

next id 20221003150730
# powershell
20221003150730 20221003150463 zet/20221003150463/README.md 4
# powershell PSCredential password print password from object
20221003150730 20221003150464 zet/20221003150464/README.md 4
# powershell load PSCredential password import from file
20221003150730 20221003150482 zet/20221003150482/README.md 4
# general powershell enumeration
20221003150730 20221003150486 zet/20221003150486/README.md 4
# active directory get GMSA service account properties
20221003150730 20221003150487 zet/20221003150487/README.md 4
# active directory get user account
20221003150730 20221003150728 zet/20221003150728/README.md 7
# powershell base64 encode equivalent within ps
20221003150730 20221003150729 zet/20221003150729/README.md 8
# powershell encode commands as base64 with windows wide char strings in linux
20221003150730 20221006214729 zet/20221006214729/README.md 5
# alh4zr3d
20221003150730 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150730 20221014185911 zet/20221014185911/README.md 4
# kb file named kb/hacking/commands/encode-powershell-base64-windows.md

next id 20221003150750
# crackmapexec kerberos authentication with ticket
20221003150750 20221003150425 zet/20221003150425/README.md 2
# kerberos attack on windows host
20221003150750 20221003150749 zet/20221003150749/README.md 6
# crackmapexec kerberos authentication with ticket include ticket environment variable
20221003150750 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150750 20221014185905 zet/20221014185905/README.md 5
# kb file named kb/hacking/commands/windows-active-directory-kerberos-commands.md
20221003150750 20221019150132 zet/20221019150132/README.md 9
# kerberos AD commands

next id 20221003150755
# keytool
20221003150755 20221003150754 zet/20221003150754/README.md 4
# keytool print certificate in RSA file
20221003150755 20221014185903 zet/20221014185903/README.md 4
# kb file named kb/hacking/commands/keytool.md

next id 20221003150757
# MSFVENOM tricks
20221003150757 20221003150756 zet/20221003150756/README.md 4
# MSFVENOM tricks make executable binary with input shellcode
20221003150757 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150757 20221014142356 zet/20221014142356/README.md 4
# concept of a neat trick or solution
20221003150757 20221014185901 zet/20221014185901/README.md 4
# kb file named kb/hacking/commands/msfvenom-commands.md

next id 20221003150765
# MSFVENOM Linux Binary (.elf) 32 Bit (x86)
20221003150765 20221003150761 zet/20221003150761/README.md 4
# MSFVENOM Linux Binary (.elf) 32 Bit (x86) Bind Shell
20221003150765 20221003150762 zet/20221003150762/README.md 4
# MSFVENOM Linux Binary (.elf) 32 Bit (x86) Reverse Shell
20221003150765 20221003150763 zet/20221003150763/README.md 4
# MSFVENOM Linux Binary (.elf) 32 Bit (x86) Bind Shell
20221003150765 20221003150764 zet/20221003150764/README.md 4
# MSFVENOM Linux Binary (.elf) 32 Bit (x86) Reverse Shell
20221003150765 20221014185901 zet/20221014185901/README.md 4
# kb file named kb/hacking/commands/msfvenom-commands.md

next id 20221003150766
# MSFVENOM Linux Binary (.elf)
20221003150766 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003150766 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150766 20221014185901 zet/20221014185901/README.md 4
# kb file named kb/hacking/commands/msfvenom-commands.md

next id 20221003150771
# MSFVENOM Windows Binary (.exe) executable 64 Bit (x64)
20221003150771 20221003150767 zet/20221003150767/README.md 4
# MSFVENOM Windows Binary (.exe) executable 64 Bit (x64) Meterpreter
20221003150771 20221003150768 zet/20221003150768/README.md 4
# MSFVENOM Windows Binary (.exe) executable 64 Bit (x64) Bind Shell
20221003150771 20221003150769 zet/20221003150769/README.md 4
# MSFVENOM Windows Binary (.exe) executable 64 Bit (x64) Reverse Shell
20221003150771 20221003150770 zet/20221003150770/README.md 4
# MSFVENOM Windows Binary (.exe) executable 64 Bit (x64) service
20221003150771 20221014185901 zet/20221014185901/README.md 4
# kb file named kb/hacking/commands/msfvenom-commands.md

next id 20221003150775
# MSFVENOM Windows Binary (.exe) executable 32 Bit (x86)
20221003150775 20221003150527 zet/20221003150527/README.md 5
# generate reverse shell shellcode payload for pwn
20221003150775 20221003150773 zet/20221003150773/README.md 4
# MSFVENOM Windows Binary (.exe) executable 32 Bit (x86) Bind Shell
20221003150775 20221003150774 zet/20221003150774/README.md 4
# MSFVENOM Windows Binary (.exe) executable 32 Bit (x86) Reverse Shell
20221003150775 20221014185901 zet/20221014185901/README.md 4
# kb file named kb/hacking/commands/msfvenom-commands.md

next id 20221003150776
# MSFVENOM Windows Binary (.exe) executable
20221003150776 20221014185901 zet/20221014185901/README.md 4
# kb file named kb/hacking/commands/msfvenom-commands.md

next id 20221003150777
# MSFVENOM
20221003150777 20221003150527 zet/20221003150527/README.md 5
# generate reverse shell shellcode payload for pwn
20221003150777 20221003150758 zet/20221003150758/README.md 4
# MSFVENOM Active Sever Pages Extended (.aspx)
20221003150777 20221003150760 zet/20221003150760/README.md 4
# MSFVENOM Java Server Pages (.jsp)
20221003150777 20221013175128 zet/20221013175128/README.md 4
# preparing exploit payloads
20221003150777 20221014185901 zet/20221014185901/README.md 4
# kb file named kb/hacking/commands/msfvenom-commands.md
20221003150777 20221017180938 zet/20221017180938/README.md 4
# hacking or enumeration tool

next id 20221003150780
# crowbar
20221003150780 20221003150779 zet/20221003150779/README.md 4
# crowbar brute force RDP
20221003150780 20221014185900 zet/20221014185900/README.md 4
# kb file named kb/hacking/commands/crowbar.md

next id 20221003150791
# openssl
20221003150791 20221003150251 zet/20221003150251/README.md 2
# diffie-hellman key exchange
20221003150791 20221003150262 zet/20221003150262/README.md 8
# block ciphers CBC cipher cipher block chaining cipher mode of operation
20221003150791 20221003150271 zet/20221003150271/README.md 12
# create openssl client certificates from leaked CA private key
20221003150791 20221003150332 zet/20221003150332/README.md 2
# default openssl message digest
20221003150791 20221003150459 zet/20221003150459/README.md 80
# openssl cipher commands encrypt text
20221003150791 20221003150724 zet/20221003150724/README.md 4
# openssl pfx p12 file PKCS12
20221003150791 20221003150726 zet/20221003150726/README.md 5
# openssl view information about certificate request
20221003150791 20221003150787 zet/20221003150787/README.md 4
# openssl convert certificate to PKCS12 format
20221003150791 20221003150788 zet/20221003150788/README.md 7
# openssl sign a certificate signing request with the private key of a CA certificate authority
20221003150791 20221003150789 zet/20221003150789/README.md 5
# openssl create certificate signing request
20221003150791 20221003150790 zet/20221003150790/README.md 4
# openssl create a key 4096 bits
20221003150791 20221008042814 zet/20221008042814/README.md 2
# WIP
20221003150791 20221008212802 zet/20221008212802/README.md 2
# software program
20221003150791 20221009014200 zet/20221009014200/README.md 2
# concept of a command
20221003150791 20221014185857 zet/20221014185857/README.md 4
# kb file named kb/hacking/commands/openssl-general.md

next id 20221003150794
# generate cewl wordlist from file
20221003150794 20221003150792 zet/20221003150792/README.md 6
# generate cewl wordlist from file plaintext with grep
20221003150794 20221003150793 zet/20221003150793/README.md 8
# generate cewl wordlist from file using temporary http server
20221003150794 20221014185855 zet/20221014185855/README.md 4
# kb file named kb/hacking/commands/generate-cewl-wordlist.md

next id 20221003150796
# generate cewl wordlist
20221003150796 20221003150795 zet/20221003150795/README.md 6
# generate cewl wordlist from website
20221003150796 20221014185855 zet/20221014185855/README.md 4
# kb file named kb/hacking/commands/generate-cewl-wordlist.md

next id 20221003150801
# openssl commands
20221003150801 20221003150271 zet/20221003150271/README.md 12
# create openssl client certificates from leaked CA private key
20221003150801 20221003150330 zet/20221003150330/README.md 5
# identifying type of encryption of unknown ciphertext
20221003150801 20221003150332 zet/20221003150332/README.md 2
# default openssl message digest
20221003150801 20221003150726 zet/20221003150726/README.md 5
# openssl view information about certificate request
20221003150801 20221003150799 zet/20221003150799/README.md 4
# openssl commands decrypt file
20221003150801 20221003150800 zet/20221003150800/README.md 4
# openssl commands encrypt file
20221003150801 20221014185852 zet/20221014185852/README.md 4
# kb file named kb/hacking/commands/openssl-commands.md

next id 20221003150807
# brute force default credentials
20221003150807 20221003150744 zet/20221003150744/README.md 6
# hydra brute force
20221003150807 20221003150804 zet/20221003150804/README.md 11
# brute force default credentials tomcat
20221003150807 20221003150805 zet/20221003150805/README.md 4
# brute force default credentials ssh
20221003150807 20221003150806 zet/20221003150806/README.md 4
# brute force default credentials mysql
20221003150807 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150807 20221014185851 zet/20221014185851/README.md 4
# kb file named kb/hacking/commands/hydra-default-credentials.md
20221003150807 20221017182053 zet/20221017182053/README.md 4
# hydra

next id 20221003150815
# meterpreter msf move from x86 to x64
20221003150815 20221014185848 zet/20221014185848/README.md 4
# kb file named kb/hacking/commands/metasploit.md

next id 20221003150816
# meterpreter msf
20221003150816 20221003150814 zet/20221003150814/README.md 6
# meterpreter msf migrate
20221003150816 20221014185848 zet/20221014185848/README.md 4
# kb file named kb/hacking/commands/metasploit.md
20221003150816 20221017180938 zet/20221017180938/README.md 4
# hacking or enumeration tool

next id 20221003150819
# metasploit msf
20221003150819 20221003150817 zet/20221003150817/README.md 4
# metasploit msf proxy exploits through burpsuite
20221003150819 20221003150818 zet/20221003150818/README.md 4
# metasploit msf run as script from rc file
20221003150819 20221003151149 zet/20221003151149/README.md 3
# windows XP and windows server 2003 arbitrary file write -> remote code execution metasploit
20221003150819 20221014185848 zet/20221014185848/README.md 4
# kb file named kb/hacking/commands/metasploit.md
20221003150819 20221017180938 zet/20221017180938/README.md 4
# hacking or enumeration tool
20221003150819 20221017182222 zet/20221017182222/README.md 4
# bruteforcing or password spraying tools

next id 20221003150822
# hydra bruteforce ftp
20221003150822 20221003150820 zet/20221003150820/README.md 4
# hydra bruteforce ftp rockyou 50
20221003150822 20221003150821 zet/20221003150821/README.md 4
# hydra bruteforce ftp default creds
20221003150822 20221003151179 zet/20221003151179/README.md 8
# FTP to try list
20221003150822 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003150822 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150822 20221014185846 zet/20221014185846/README.md 4
# kb file named kb/hacking/commands/hydra-ftp-command.md
20221003150822 20221017182053 zet/20221017182053/README.md 4
# hydra

next id 20221003150829
# postgres sql enumeration list
20221003150829 20221003150827 zet/20221003150827/README.md 5
# postgres sql enumeration list tables and "relations"
20221003150829 20221003150828 zet/20221003150828/README.md 4
# postgres sql enumeration list databases
20221003150829 20221003150830 zet/20221003150830/README.md 2
# postgres sql enumeration
20221003150829 20221003151204 zet/20221003151204/README.md 24
# got access to databases - general SQL
20221003150829 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150829 20221012153512 zet/20221012153512/README.md 5
# database
20221003150829 20221013173355 zet/20221013173355/README.md 4
# enumeration - the process of enumerating a target
20221003150829 20221014185843 zet/20221014185843/README.md 4
# kb file named kb/hacking/commands/database-enum-commands.md

next id 20221003150833
# responder
20221003150833 20221003150832 zet/20221003150832/README.md 7
# responder add ssl certificate
20221003150833 20221014185840 zet/20221014185840/README.md 4
# kb file named kb/hacking/commands/responder.md
20221003150833 20221017172946 zet/20221017172946/README.md 4
# LAN attacks

next id 20221003150851
# dns commands update / change / delete DNS records for subdomain with nsupdate
20221003150851 20221003150850 zet/20221003150850/README.md 10
# dns commands update / change / delete DNS records for subdomain with nsupdate 86400 seconds = one day
20221003150851 20221014185831 zet/20221014185831/README.md 4
# kb file named kb/hacking/commands/dns-commands.md

next id 20221003150855
# dns commands
20221003150855 20221003150852 zet/20221003150852/README.md 4
# dns commands enumerate with ANY query
20221003150855 20221003150853 zet/20221003150853/README.md 4
# dns commands zone transfer axfr
20221003150855 20221003150854 zet/20221003150854/README.md 4
# dns commands reverse lookup with dig
20221003150855 20221003151195 zet/20221003151195/README.md 7
# DNS to try list
20221003150855 20221003151238 zet/20221003151238/README.md 3
# firefox url bar get tld working for ctf boxes
20221003150855 20221014185831 zet/20221014185831/README.md 4
# kb file named kb/hacking/commands/dns-commands.md

next id 20221003150857
# ssh-keygen
20221003150857 20221003150856 zet/20221003150856/README.md 4
# ssh-keygen generate key to file no password prompt
20221003150857 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150857 20221014185829 zet/20221014185829/README.md 4
# kb file named kb/hacking/commands/ssh-commands.md
20221003150857 20221020000848 zet/20221020000848/README.md 4
# SSH

next id 20221003150859
# SSH arguments ssh `id_rsa` debug1 `send_pubkey_test` no mutual signature algorithm
20221003150859 20221003150860 zet/20221003150860/README.md 2
# SSH arguments connect to old server
20221003150859 20221003151174 zet/20221003151174/README.md 14
# SSH to try list
20221003150859 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150859 20221014185829 zet/20221014185829/README.md 4
# kb file named kb/hacking/commands/ssh-commands.md
20221003150859 20221020000848 zet/20221020000848/README.md 4
# SSH

next id 20221003150862
# SSH arguments
20221003150862 20221003150118 zet/20221003150118/README.md 2
# get numpad to work in ssh over putty
20221003150862 20221003150727 zet/20221003150727/README.md 4
# ssh escape rbash set terminal
20221003150862 20221003150858 zet/20221003150858/README.md 4
# SSH arguments use old ssh-rsa RSA private key allow for connection
20221003150862 20221003150860 zet/20221003150860/README.md 2
# SSH arguments connect to old server
20221003150862 20221003150861 zet/20221003150861/README.md 2
# SSH arguments troubleshoot diagnose connection problems
20221003150862 20221003151174 zet/20221003151174/README.md 14
# SSH to try list
20221003150862 20221009014200 zet/20221009014200/README.md 2
# concept of a command
20221003150862 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150862 20221014164014 zet/20221014164014/README.md 4
# protocol for application communication
20221003150862 20221014185829 zet/20221014185829/README.md 4
# kb file named kb/hacking/commands/ssh-commands.md
20221003150862 20221020000848 zet/20221020000848/README.md 4
# SSH

next id 20221003150865
# two-factor authentication 2fa generate one time pins OTP
20221003150865 20221003150291 zet/20221003150291/README.md 3
# apache 2fa default key
20221003150865 20221003150864 zet/20221003150864/README.md 6
# two-factor authentication 2fa generate one time pins OTP google authenticator
20221003150865 20221014185826 zet/20221014185826/README.md 4
# kb file named kb/hacking/commands/two-factor.md

next id 20221003150866
# two-factor authentication 2fa
20221003150866 20221003150291 zet/20221003150291/README.md 3
# apache 2fa default key
20221003150866 20221014185826 zet/20221014185826/README.md 4
# kb file named kb/hacking/commands/two-factor.md

next id 20221003150873
# host quick server
20221003150873 20221003150565 zet/20221003150565/README.md 4
# Netcat Sending file
20221003150873 20221003150872 zet/20221003150872/README.md 4
# host quick server smtp receive email server
20221003150873 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150873 20221014185823 zet/20221014185823/README.md 4
# kb file named kb/hacking/commands/quick-servers.md

next id 20221003150876
# sudo sudoers file
20221003150876 20221003150875 zet/20221003150875/README.md 4
# sudo sudoers file all nopassword
20221003150876 20221014185820 zet/20221014185820/README.md 4
# kb file named kb/hacking/priv-esc/sudoers.md

next id 20221003150884
# privilege escalation relative path abuse
20221003150884 20221003150883 zet/20221003150883/README.md 3
# privilege escalation relative path abuse using echo
20221003150884 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003150884 20221008213254 zet/20221008213254/README.md 4
# file path
20221003150884 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150884 20221014185813 zet/20221014185813/README.md 4
# kb file named kb/hacking/priv-esc/relative-path-abuse.md

next id 20221003150890
# Test CVE-2021-4034 in a docker
20221003150890 20221003150880 zet/20221003150880/README.md 5
# polkit linpeas report on CVE-2021-3560
20221003150890 20221003150885 zet/20221003150885/README.md 11
# Test CVE-2021-4034 in a docker Exploit
20221003150890 20221003150886 zet/20221003150886/README.md 14
# Test CVE-2021-4034 in a docker Dockerfile
20221003150890 20221003150887 zet/20221003150887/README.md 4
# Test CVE-2021-4034 in a docker Setup
20221003150890 20221003150888 zet/20221003150888/README.md 2
# Test CVE-2021-4034 in a docker Links to deb files
20221003150890 20221003150889 zet/20221003150889/README.md 2
# Test CVE-2021-4034 in a docker Original exploit
20221003150890 20221009015558 zet/20221009015558/README.md 2
# docker
20221003150890 20221010142810 zet/20221010142810/README.md 180
# what is the right and secure way to develop with docker
20221003150890 20221013190422 zet/20221013190422/README.md 7
# headline exploits
20221003150890 20221014185811 zet/20221014185811/README.md 4
# kb file named kb/hacking/priv-esc/polkit-pkexec-CVE-2021-4034/run-in-docker.md

next id 20221003150901
# linux enumeration quick commands capabilities
20221003150901 20221003150897 zet/20221003150897/README.md 4
# linux enumeration quick commands capabilities decode on host machine with capsh
20221003150901 20221003150898 zet/20221003150898/README.md 4
# linux enumeration quick commands capabilities running process effective capabilities
20221003150901 20221003150899 zet/20221003150899/README.md 5
# linux enumeration quick commands capabilities without getcap binary
20221003150901 20221003150900 zet/20221003150900/README.md 4
# linux enumeration quick commands capabilities get capabilities of all files recursively
20221003150901 20221003150920 zet/20221003150920/README.md 7
# linux enumeration quick commands
20221003150901 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150901 20221014185808 zet/20221014185808/README.md 4
# kb file named kb/hacking/priv-esc/enumeration-quick-commands.md

next id 20221003150907
# linux enumeration quick commands transfer / download files with just bash
20221003150907 20221003150905 zet/20221003150905/README.md 5
# linux enumeration quick commands transfer / download files with just bash send
20221003150907 20221003150906 zet/20221003150906/README.md 6
# linux enumeration quick commands transfer / download files with just bash receive
20221003150907 20221003150920 zet/20221003150920/README.md 7
# linux enumeration quick commands
20221003150907 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150907 20221014185808 zet/20221014185808/README.md 4
# kb file named kb/hacking/priv-esc/enumeration-quick-commands.md

next id 20221003150942
# python imports
20221003150942 20221003150940 zet/20221003150940/README.md 17
# python imports library search path
20221003150942 20221003150941 zet/20221003150941/README.md 4
# python imports files vs loading as libraries
20221003150942 20221003151339 zet/20221003151339/README.md 4
# enumerate all python imports; chain 2 awk scripts with a filter
20221003150942 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150942 20221014185754 zet/20221014185754/README.md 4
# kb file named kb/hacking/python/python-imports.md
20221003150942 20221014190123 zet/20221014190123/README.md 4
# kb file named kb/awk-scripting/enumerate-python-imports.md
20221003150942 20221015005557 zet/20221015005557/README.md 4
# python library
20221003150942 20221015005745 zet/20221015005745/README.md 5
# python coding

next id 20221003150946
# python
20221003150946 20221003150315 zet/20221003150315/README.md 2
# python uvicorn `--reload` flag
20221003150946 20221003150943 zet/20221003150943/README.md 7
# python string alphanumeric chars
20221003150946 20221003150944 zet/20221003150944/README.md 2
# python hex to bytes
20221003150946 20221003150945 zet/20221003150945/README.md 3
# python hex to string
20221003150946 20221003151221 zet/20221003151221/README.md 4
# pypykatz dump hashes from registry backup
20221003150946 20221003151339 zet/20221003151339/README.md 4
# enumerate all python imports; chain 2 awk scripts with a filter
20221003150946 20221003151408 zet/20221003151408/README.md 65
# parse burpsuite saved request file and convert to python requests script for copying
20221003150946 20221007023939 zet/20221007023939/README.md 8
# python ternary operator
20221003150946 20221007043259 zet/20221007043259/README.md 90
# zettelkasten generic ideas
20221003150946 20221008212000 zet/20221008212000/README.md 2
# coding / programming
20221003150946 20221008212519 zet/20221008212519/README.md 2
# programming language
20221003150946 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150946 20221009032056 zet/20221009032056/README.md 4
# keeping track of htb ctf flags
20221003150946 20221014074726 zet/20221014074726/README.md 11
# use appropriate language for the job
20221003150946 20221014185753 zet/20221014185753/README.md 4
# kb file named kb/hacking/python/python-quick-reference.md
20221003150946 20221015004120 zet/20221015004120/README.md 30
# ippsec video opensource
20221003150946 20221015004252 zet/20221015004252/README.md 4
# htb opensource machine
20221003150946 20221015005535 zet/20221015005535/README.md 5
# werkzeug
20221003150946 20221015005557 zet/20221015005557/README.md 4
# python library
20221003150946 20221015005745 zet/20221015005745/README.md 5
# python coding

next id 20221003150949
# python fix SSL errors
20221003150949 20221003150948 zet/20221003150948/README.md 2
# python fix SSL errors using requests library
20221003150949 20221007062330 zet/20221007062330/README.md 4
# broken stuff to fix
20221003150949 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003150949 20221014185751 zet/20221014185751/README.md 4
# kb file named kb/hacking/python/fix-ssl.md

next id 20221003150953
# OSINT organizations
20221003150953 20221003150549 zet/20221003150549/README.md 4
# URL CRAWL/ Discovery waybackurls
20221003150953 20221003150951 zet/20221003150951/README.md 3
# OSINT organizations job postings
20221003150953 20221003150952 zet/20221003150952/README.md 3
# OSINT organizations github OSINT
20221003150953 20221003150966 zet/20221003150966/README.md 2
# OSINT
20221003150953 20221014185750 zet/20221014185750/README.md 4
# kb file named kb/hacking/methodology/osint-overview.md

next id 20221003150983
# mariadb mysql files
20221003150983 20221003150979 zet/20221003150979/README.md 3
# mariadb mysql files read database users
20221003150983 20221003150980 zet/20221003150980/README.md 6
# mariadb mysql files write
20221003150983 20221003150981 zet/20221003150981/README.md 2
# mariadb mysql files read
20221003150983 20221003150982 zet/20221003150982/README.md 2
# mariadb mysql files check permissions
20221003150983 20221003150988 zet/20221003150988/README.md 3
# mariadb mysql
20221003150983 20221003151204 zet/20221003151204/README.md 24
# got access to databases - general SQL
20221003150983 20221003151233 zet/20221003151233/README.md 10
# mysql mariadb write UDF shell or any binary file with file permissions
20221003150983 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150983 20221012153512 zet/20221012153512/README.md 5
# database
20221003150983 20221014185735 zet/20221014185735/README.md 4
# kb file named kb/hacking/methodology/sqli-manual-mysql-payloads.md

next id 20221003150985
# mariadb mysql SQLi union injection
20221003150985 20221003150980 zet/20221003150980/README.md 6
# mariadb mysql files write
20221003150985 20221003151204 zet/20221003151204/README.md 24
# got access to databases - general SQL
20221003150985 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150985 20221012153512 zet/20221012153512/README.md 5
# database
20221003150985 20221014185735 zet/20221014185735/README.md 4
# kb file named kb/hacking/methodology/sqli-manual-mysql-payloads.md

next id 20221003150987
# mariadb mysql SQLi
20221003150987 20221003150981 zet/20221003150981/README.md 2
# mariadb mysql files read
20221003150987 20221003150984 zet/20221003150984/README.md 10
# mariadb mysql SQLi information tables
20221003150987 20221003150986 zet/20221003150986/README.md 3
# mariadb mysql SQLi concat multiple values into one field rows
20221003150987 20221003150988 zet/20221003150988/README.md 3
# mariadb mysql
20221003150987 20221003151204 zet/20221003151204/README.md 24
# got access to databases - general SQL
20221003150987 20221003151233 zet/20221003151233/README.md 10
# mysql mariadb write UDF shell or any binary file with file permissions
20221003150987 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003150987 20221012153512 zet/20221012153512/README.md 5
# database
20221003150987 20221014185735 zet/20221014185735/README.md 4
# kb file named kb/hacking/methodology/sqli-manual-mysql-payloads.md

next id 20221003151004
# API enumeration good wordlists
20221003151004 20221003150999 zet/20221003150999/README.md 10
# API enumeration good wordlists API enumeration wordlists by size
20221003151004 20221003151000 zet/20221003151000/README.md 3
# API enumeration good wordlists last resort?
20221003151004 20221003151001 zet/20221003151001/README.md 2
# API enumeration good wordlists commonly used list of words
20221003151004 20221003151002 zet/20221003151002/README.md 3
# API enumeration good wordlists parameters
20221003151004 20221003151003 zet/20221003151003/README.md 6
# API enumeration good wordlists seclists for endpoints
20221003151004 20221003151006 zet/20221003151006/README.md 4
# API enumeration
20221003151004 20221013173355 zet/20221013173355/README.md 4
# enumeration - the process of enumerating a target
20221003151004 20221014185733 zet/20221014185733/README.md 4
# kb file named kb/hacking/methodology/API-enumeration.md

next id 20221003151008
# LFI or directory traversal procedures file wordlists
20221003151008 20221003151007 zet/20221003151007/README.md 3
# LFI or directory traversal procedures file wordlists linux
20221003151008 20221003151014 zet/20221003151014/README.md 12
# LFI or directory traversal procedures
20221003151008 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151008 20221014185732 zet/20221014185732/README.md 4
# kb file named kb/hacking/methodology/LFI-procedure.md

next id 20221003151010
# LFI or directory traversal procedures read scripts from web server process cwd downloading with curl 
20221003151010 20221003151009 zet/20221003151009/README.md 2
# LFI or directory traversal procedures read scripts from web server process cwd downloading with curl  prevent normalization of paths
20221003151010 20221003151012 zet/20221003151012/README.md 2
# LFI or directory traversal procedures read scripts from web server process cwd
20221003151010 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151010 20221014185732 zet/20221014185732/README.md 4
# kb file named kb/hacking/methodology/LFI-procedure.md

next id 20221003151028
# decrypt azure AD connect passwords
20221003151028 20221003151027 zet/20221003151027/README.md 30
# decrypt azure AD connect passwords powershell MSSQL queries
20221003151028 20221014185721 zet/20221014185721/README.md 4
# kb file named kb/hacking/windows/decrypt-azure-ad-connect.md

next id 20221003151034
# applocker limit allowed executables and allowed paths
20221003151034 20221003151033 zet/20221003151033/README.md 2
# applocker limit allowed executables and allowed paths bypass executable blocking
20221003151034 20221014185718 zet/20221014185718/README.md 4
# kb file named kb/hacking/windows/windows-information.md

next id 20221003151037
# program files ruxim directory

next id 20221003151039
# dumping credentials as admin
20221003151039 20221003150449 zet/20221003150449/README.md 4
# keepass CLI tool open and edit keepass databases
20221003151039 20221003151038 zet/20221003151038/README.md 3
# dumping credentials as admin in remote desktop RDP or GUI
20221003151039 20221003151175 zet/20221003151175/README.md 17
# EVERYTHING - common to try list
20221003151039 20221013185837 zet/20221013185837/README.md 5
# HKCU registry hive ntuser.dat
20221003151039 20221014185718 zet/20221014185718/README.md 4
# kb file named kb/hacking/windows/windows-information.md

next id 20221003151045
# windows alternate data streams commands
20221003151045 20221003151042 zet/20221003151042/README.md 5
# windows alternate data streams commands displaying content with powershell
20221003151045 20221003151043 zet/20221003151043/README.md 4
# windows alternate data streams commands creating alt streams
20221003151045 20221003151044 zet/20221003151044/README.md 4
# windows alternate data streams commands enumerate directory for alt streams
20221003151045 20221014185718 zet/20221014185718/README.md 4
# kb file named kb/hacking/windows/windows-information.md

next id 20221003151047
# windows reverse shell AV bypass active directory endpoint protection
20221003151047 20221014185718 zet/20221014185718/README.md 4
# kb file named kb/hacking/windows/windows-information.md

next id 20221003151048
# windows reverse shell AV bypass
20221003151048 20221003151046 zet/20221003151046/README.md 3
# windows reverse shell AV bypass defender
20221003151048 20221014185718 zet/20221014185718/README.md 4
# kb file named kb/hacking/windows/windows-information.md

next id 20221003151050
# change user password
20221003151050 20221003151049 zet/20221003151049/README.md 5
# change user password powershell or dos
20221003151050 20221014185718 zet/20221014185718/README.md 4
# kb file named kb/hacking/windows/windows-information.md

next id 20221003151052
# check network time offset with network time protocol NTP server on windows AD kerberos

next id 20221003151057
# get windows enumeration info from file read

next id 20221003151066
# AMSI detect windows defender
20221003151066 20221003151065 zet/20221003151065/README.md 4
# AMSI detect windows defender with known malicious string
20221003151066 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151066 20221014185715 zet/20221014185715/README.md 4
# kb file named kb/hacking/windows/test-for-defender-amsi.md

next id 20221003151067
# AMSI
20221003151067 20221014185715 zet/20221014185715/README.md 4
# kb file named kb/hacking/windows/test-for-defender-amsi.md

next id 20221003151070
# dump process memory
20221003151070 20221003151068 zet/20221003151068/README.md 4
# dump process memory with task manager as admin
20221003151070 20221003151069 zet/20221003151069/README.md 6
# dump process memory with sysinternals procdump
20221003151070 20221014185713 zet/20221014185713/README.md 4
# kb file named kb/hacking/windows/dump-process-memory.md

next id 20221003151072
# windows color script output winpeas log
20221003151072 20221003151071 zet/20221003151071/README.md 4
# windows color script output winpeas log scroll with colors and convert to utf8 for linux
20221003151072 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003151072 20221014185712 zet/20221014185712/README.md 4
# kb file named kb/hacking/windows/enumeration-scripts-processing.md

next id 20221003151073
# windows color script output
20221003151073 20221014185712 zet/20221014185712/README.md 4
# kb file named kb/hacking/windows/enumeration-scripts-processing.md

next id 20221003151076
# service account privileges exploiting
20221003151076 20221003151074 zet/20221003151074/README.md 4
# service account privileges exploiting SeManageVolumePrivilege
20221003151076 20221003151075 zet/20221003151075/README.md 6
# service account privileges exploiting SeImpersonatePrivilege
20221003151076 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003151076 20221008215655 zet/20221008215655/README.md 2
# user account
20221003151076 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151076 20221014185710 zet/20221014185710/README.md 4
# kb file named kb/hacking/windows/service-account-privileges.md

next id 20221003151081
# service account privileges
20221003151081 20221003151080 zet/20221003151080/README.md 2
# service account privileges restore
20221003151081 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003151081 20221008215655 zet/20221008215655/README.md 2
# user account
20221003151081 20221014185710 zet/20221014185710/README.md 4
# kb file named kb/hacking/windows/service-account-privileges.md
20221003151081 20221019003259 zet/20221019003259/README.md 4
# background task or running service on machine

next id 20221003151089
# mimikatz
20221003151089 20221003151086 zet/20221003151086/README.md 5
# mimikatz troubleshooting `ERROR kuhl_m_sekurlsa_acquireLSA Key import`
20221003151089 20221003151087 zet/20221003151087/README.md 5
# mimikatz dump passwords
20221003151089 20221003151088 zet/20221003151088/README.md 4
# mimikatz all in one command for non-interactive powershell
20221003151089 20221014185704 zet/20221014185704/README.md 4
# kb file named kb/hacking/windows/mimikatz.md
20221003151089 20221017180938 zet/20221017180938/README.md 4
# hacking or enumeration tool

next id 20221003151094
# windows API
20221003151094 20221003151060 zet/20221003151060/README.md 4
# location of services in windows registry
20221003151094 20221003151093 zet/20221003151093/README.md 12
# windows API enable privilege
20221003151094 20221008213458 zet/20221008213458/README.md 4
# operating system
20221003151094 20221013185837 zet/20221013185837/README.md 5
# HKCU registry hive ntuser.dat
20221003151094 20221014185701 zet/20221014185701/README.md 4
# kb file named kb/hacking/windows/enable-privilege-api.md

next id 20221003151099
# powershell commands encoded command nop bypass hidden
20221003151099 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151099 20221014185658 zet/20221014185658/README.md 4
# kb file named kb/hacking/windows/windows-reverse-shell.md

next id 20221003151101
# powershell commands
20221003151101 20221003150479 zet/20221003150479/README.md 4
# general enumeration what commands are available
20221003151101 20221003151098 zet/20221003151098/README.md 4
# powershell commands execute encoded command as quietly as possible
20221003151101 20221003151100 zet/20221003151100/README.md 5
# powershell commands download and execute script
20221003151101 20221006214729 zet/20221006214729/README.md 5
# alh4zr3d
20221003151101 20221008212802 zet/20221008212802/README.md 2
# software program
20221003151101 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151101 20221014185658 zet/20221014185658/README.md 4
# kb file named kb/hacking/windows/windows-reverse-shell.md

next id 20221003151108
# dos commands net
20221003151108 20221003151107 zet/20221003151107/README.md 2
# dos commands net add user to domain group
20221003151108 20221014185655 zet/20221014185655/README.md 4
# kb file named kb/hacking/windows/dos-and-powershell-enumeration-quick.md

next id 20221003151110
# dos commands admin / system
20221003151110 20221003151109 zet/20221003151109/README.md 3
# dos commands admin / system dump registry secretsdump hashes
20221003151110 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003151110 20221014185655 zet/20221014185655/README.md 4
# kb file named kb/hacking/windows/dos-and-powershell-enumeration-quick.md

next id 20221003151115
# dos commands services sc
20221003151115 20221003151112 zet/20221003151112/README.md 2
# dos commands services sc start service
20221003151115 20221003151113 zet/20221003151113/README.md 2
# dos commands services sc set binary path
20221003151115 20221003151114 zet/20221003151114/README.md 3
# dos commands services sc enable service
20221003151115 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003151115 20221014185655 zet/20221014185655/README.md 4
# kb file named kb/hacking/windows/dos-and-powershell-enumeration-quick.md

next id 20221003151124
# dos commands
20221003151124 20221003150568 zet/20221003150568/README.md 4
# SMB List Drives (Execute on Victim)
20221003151124 20221003151102 zet/20221003151102/README.md 4
# DOS commands download file from http
20221003151124 20221003151111 zet/20221003151111/README.md 2
# dos commands kill process by id
20221003151124 20221003151117 zet/20221003151117/README.md 3
# dos commands file permissions
20221003151124 20221003151118 zet/20221003151118/README.md 2
# dos commands show environment variables
20221003151124 20221003151119 zet/20221003151119/README.md 2
# dos commands active network connections
20221003151124 20221003151120 zet/20221003151120/README.md 2
# dos commands installed drivers
20221003151124 20221003151121 zet/20221003151121/README.md 7
# dos commands service paths
20221003151124 20221003151122 zet/20221003151122/README.md 2
# dos commands windows services and drivers
20221003151124 20221003151123 zet/20221003151123/README.md 5
# dos commands see running service processes
20221003151124 20221003151207 zet/20221003151207/README.md 83
# windows privilege escalation
20221003151124 20221013173355 zet/20221013173355/README.md 4
# enumeration - the process of enumerating a target
20221003151124 20221014185655 zet/20221014185655/README.md 4
# kb file named kb/hacking/windows/dos-and-powershell-enumeration-quick.md

next id 20221003151126
# active directory  delegation unconstrained
20221003151126 20221003151127 zet/20221003151127/README.md 4
# active directory  delegation
20221003151126 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003151126 20221014185654 zet/20221014185654/README.md 4
# kb file named kb/hacking/windows/windows-active-directory-and-privilege-information.md

next id 20221003151143
# active directory  exploiting permissions
20221003151143 20221003151141 zet/20221003151141/README.md 4
# active directory  exploiting permissions GenericAll
20221003151143 20221003151142 zet/20221003151142/README.md 3
# active directory  exploiting permissions WriteDacl
20221003151143 20221006213130 zet/20221006213130/README.md 2
# hacking / CTF platforms
20221003151143 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003151143 20221008005525 zet/20221008005525/README.md 9
# bash scripting pitfalls and anti-patterns
20221003151143 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151143 20221014185654 zet/20221014185654/README.md 4
# kb file named kb/hacking/windows/windows-active-directory-and-privilege-information.md

next id 20221003151144
# active directory 
20221003151144 20221003150254 zet/20221003150254/README.md 3
# beacon object file BOF
20221003151144 20221003150352 zet/20221003150352/README.md 2
# fake set change system time for command
20221003151144 20221003150357 zet/20221003150357/README.md 2
# create malicious ODT file payload to leak NTLMv2 hashes with badodf
20221003151144 20221003150967 zet/20221003150967/README.md 6
# things to check in bloodhound
20221003151144 20221003151127 zet/20221003151127/README.md 4
# active directory  delegation
20221003151144 20221003151129 zet/20221003151129/README.md 3
# active directory  DNS
20221003151144 20221003151130 zet/20221003151130/README.md 5
# active directory  change user password with rpcclient over SMB 
20221003151144 20221003151134 zet/20221003151134/README.md 2
# active directory  GMSA group managed service account
20221003151144 20221003151135 zet/20221003151135/README.md 5
# active directory  workflow for penetration test on windows network in organization
20221003151144 20221003151136 zet/20221003151136/README.md 5
# active directory  mindset and methodology
20221003151144 20221003151137 zet/20221003151137/README.md 2
# active directory  sensitive files
20221003151144 20221003151138 zet/20221003151138/README.md 2
# active directory  Backup Operators group
20221003151144 20221003151139 zet/20221003151139/README.md 10
# active directory  ForceChangePassword change user password
20221003151144 20221003151140 zet/20221003151140/README.md 4
# active directory  NTLMv2 vs kerberos authentication on the network
20221003151144 20221003151147 zet/20221003151147/README.md 27
# resource based constrained delegation S4U attack powershell commands on target
20221003151144 20221003151201 zet/20221003151201/README.md 4
# RDP
20221003151144 20221003151203 zet/20221003151203/README.md 4
# LDAP
20221003151144 20221003151207 zet/20221003151207/README.md 83
# windows privilege escalation
20221003151144 20221003151218 zet/20221003151218/README.md 5
# send email over SMTP from command line with swaks
20221003151144 20221006214729 zet/20221006214729/README.md 5
# alh4zr3d
20221003151144 20221006215623 zet/20221006215623/README.md 47
# scrambled machine video notes
20221003151144 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003151144 20221008042814 zet/20221008042814/README.md 2
# WIP
20221003151144 20221008215530 zet/20221008215530/README.md 5
# username
20221003151144 20221009001740 zet/20221009001740/README.md 3
# OSCP exam
20221003151144 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151144 20221011092959 zet/20221011092959/README.md 4
# conda active directory hacking videos
20221003151144 20221014185654 zet/20221014185654/README.md 4
# kb file named kb/hacking/windows/windows-active-directory-and-privilege-information.md

next id 20221003151146
# resource based constrained delegation S4U attack transfering tickets to attacker machine to psexec
20221003151146 20221003151145 zet/20221003151145/README.md 9
# resource based constrained delegation S4U attack transfering tickets to attacker machine to psexec convert kirbi to ccache
20221003151146 20221003151148 zet/20221003151148/README.md 7
# resource based constrained delegation S4U attack
20221003151146 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003151146 20221014185652 zet/20221014185652/README.md 4
# kb file named kb/hacking/windows/AD-resource-based-constrained-delegation-attack.md

next id 20221003151152
# windows XP and windows server 2003
20221003151152 20221003150835 zet/20221003150835/README.md 4
# smb mount share old SMBv1 share
20221003151152 20221003151150 zet/20221003151150/README.md 6
# windows XP and windows server 2003 write arbitrary MOF file for remote code execution
20221003151152 20221003151153 zet/20221003151153/README.md 4
# windows
20221003151152 20221003151170 zet/20221003151170/README.md 2
# active directory domain old
20221003151152 20221003151197 zet/20221003151197/README.md 8
# SMB old SMB exploits
20221003151152 20221014185651 zet/20221014185651/README.md 4
# kb file named kb/hacking/windows/xp-server-2003.md

next id 20221003151193
# HTTP
20221003151193 20221003150252 zet/20221003150252/README.md 2
# httponly cookie option
20221003151193 20221003150462 zet/20221003150462/README.md 4
# tomcat
20221003151193 20221003150968 zet/20221003150968/README.md 2
# document.cookie and XSS
20221003151193 20221003151175 zet/20221003151175/README.md 17
# EVERYTHING - common to try list
20221003151193 20221003151180 zet/20221003151180/README.md 29
# HTTP UNCOMMON HTTP ( hacktricks )
20221003151193 20221003151182 zet/20221003151182/README.md 21
# HTTP compromised CMS login
20221003151193 20221003151183 zet/20221003151183/README.md 19
# HTTP vulnerability finding and fuzzing
20221003151193 20221003151184 zet/20221003151184/README.md 22
# HTTP found login form
20221003151193 20221003151185 zet/20221003151185/README.md 11
# HTTP bypassing restrictions
20221003151193 20221003151186 zet/20221003151186/README.md 17
# HTTP API and POST endpoints
20221003151193 20221003151187 zet/20221003151187/README.md 16
# HTTP LFI or dir traversal
20221003151193 20221003151188 zet/20221003151188/README.md 9
# HTTP found CMS
20221003151193 20221003151189 zet/20221003151189/README.md 6
# HTTP specific HTTP server exploit possibilities
20221003151193 20221003151190 zet/20221003151190/README.md 21
# HTTP BUSTING directory busting to try list
20221003151193 20221003151191 zet/20221003151191/README.md 33
# HTTP uncommon ideas list
20221003151193 20221003151192 zet/20221003151192/README.md 48
# HTTP to try list
20221003151193 20221003151195 zet/20221003151195/README.md 7
# DNS to try list
20221003151193 20221003151408 zet/20221003151408/README.md 65
# parse burpsuite saved request file and convert to python requests script for copying
20221003151193 20221006215353 zet/20221006215353/README.md 8
# InsiderPHD
20221003151193 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003151193 20221008210209 zet/20221008210209/README.md 4
# nim makes smaller wasm binaries than rust
20221003151193 20221008221548 zet/20221008221548/README.md 4
# website
20221003151193 20221008221822 zet/20221008221822/README.md 3
# www - the web
20221003151193 20221009001740 zet/20221009001740/README.md 3
# OSCP exam
20221003151193 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151193 20221009102436 zet/20221009102436/README.md 5
# hacking to try lists
20221003151193 20221014164014 zet/20221014164014/README.md 4
# protocol for application communication
20221003151193 20221014185619 zet/20221014185619/README.md 4
# kb file named kb/hacking/to-try-lists/HTTP.md
20221003151193 20221015005535 zet/20221015005535/README.md 5
# werkzeug
20221003151193 20221019143424 zet/20221019143424/README.md 6
# JSON concept

next id 20221003151214
# got leaked files
20221003151214 20221003151055 zet/20221003151055/README.md 2
# get windows verison info from file read
20221003151214 20221003151164 zet/20221003151164/README.md 8
# SNMP
20221003151214 20221003151192 zet/20221003151192/README.md 48
# HTTP to try list
20221003151214 20221003151211 zet/20221003151211/README.md 4
# got leaked files jar
20221003151214 20221003151212 zet/20221003151212/README.md 3
# got leaked files encrypted zip files
20221003151214 20221003151213 zet/20221003151213/README.md 7
# got leaked files to try list
20221003151214 20221007044552 zet/20221007044552/README.md 2
# todo or to-try list
20221003151214 20221008213254 zet/20221008213254/README.md 4
# file path
20221003151214 20221009102436 zet/20221009102436/README.md 5
# hacking to try lists
20221003151214 20221014185559 zet/20221014185559/README.md 4
# kb file named kb/hacking/to-try-lists/got-leaked-file-to-try-list.md

next id 20221003151236
# mysql mariadb
20221003151236 20221003151204 zet/20221003151204/README.md 24
# got access to databases - general SQL
20221003151236 20221003151231 zet/20221003151231/README.md 4
# mysql mariadb find plugin directory
20221003151236 20221003151232 zet/20221003151232/README.md 6
# mysql mariadb exploit GRANT OPTION to grant file write permissions to self
20221003151236 20221003151233 zet/20221003151233/README.md 10
# mysql mariadb write UDF shell or any binary file with file permissions
20221003151236 20221003151235 zet/20221003151235/README.md 5
# mysql mariadb display query output as pretty printed text with column names
20221003151236 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151236 20221012153512 zet/20221012153512/README.md 5
# database
20221003151236 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003151236 20221014185545 zet/20221014185545/README.md 4
# kb file named kb/hacking/tricks/mysql-tricks.md

next id 20221003151244
# preparing malicious package payloads
20221003151244 20221003150357 zet/20221003150357/README.md 2
# create malicious ODT file payload to leak NTLMv2 hashes with badodf
20221003151244 20221003151243 zet/20221003151243/README.md 4
# preparing malicious package payloads node npm package
20221003151244 20221003151261 zet/20221003151261/README.md 3
# build windows exploit on linux using mingw
20221003151244 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151244 20221013175128 zet/20221013175128/README.md 4
# preparing exploit payloads
20221003151244 20221013175957 zet/20221013175957/README.md 4
# serialization concept
20221003151244 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003151244 20221014185536 zet/20221014185536/README.md 4
# kb file named kb/hacking/tricks/malicious-packages.md

next id 20221003151247
# Jenkins / Groovy (Java) Reverse Shell
20221003151247 20221003151245 zet/20221003151245/README.md 7
# Jenkins / Groovy (Java) Reverse Shell Windows
20221003151247 20221003151246 zet/20221003151246/README.md 7
# Jenkins / Groovy (Java) Reverse Shell Linux
20221003151247 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003151247 20221014185534 zet/20221014185534/README.md 4
# kb file named kb/hacking/tricks/jenkins-rev-shell-code.md

next id 20221003151249
# sending installs to target install programs on target as tar archive file using docker to find installed dependencies
20221003151249 20221003151250 zet/20221003151250/README.md 4
# sending installs to target
20221003151249 20221013194055 zet/20221013194055/README.md 4
# concept of installing something
20221003151249 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003151249 20221014185533 zet/20221014185533/README.md 4
# kb file named kb/hacking/tricks/install-pip-modules-on-target-as-files.md

next id 20221003151253
# run executable binary programs within process memory windows cobalt strike
20221003151253 20221003151251 zet/20221003151251/README.md 2
# run executable binary programs within process memory windows cobalt strike BOF.NET common language runtime CLR .NET assemblies
20221003151253 20221003151252 zet/20221003151252/README.md 2
# run executable binary programs within process memory windows cobalt strike BOF C DLLs
20221003151253 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003151253 20221014185531 zet/20221014185531/README.md 4
# kb file named kb/hacking/tricks/run-programs-in-memory.md

next id 20221003151254
# run executable binary programs within process memory windows
20221003151254 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003151254 20221014185531 zet/20221014185531/README.md 4
# kb file named kb/hacking/tricks/run-programs-in-memory.md

next id 20221003151256
# run executable binary programs within process memory linux
20221003151256 20221003151255 zet/20221003151255/README.md 3
# run executable binary programs within process memory linux base64 piped text using dd and shellcode
20221003151256 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003151256 20221014185531 zet/20221014185531/README.md 4
# kb file named kb/hacking/tricks/run-programs-in-memory.md

next id 20221003151257
# run executable binary programs within process memory
20221003151257 20221003150254 zet/20221003150254/README.md 3
# beacon object file BOF
20221003151257 20221003151251 zet/20221003151251/README.md 2
# run executable binary programs within process memory windows cobalt strike BOF.NET common language runtime CLR .NET assemblies
20221003151257 20221003151252 zet/20221003151252/README.md 2
# run executable binary programs within process memory windows cobalt strike BOF C DLLs
20221003151257 20221003151255 zet/20221003151255/README.md 3
# run executable binary programs within process memory linux base64 piped text using dd and shellcode
20221003151257 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003151257 20221014185531 zet/20221014185531/README.md 4
# kb file named kb/hacking/tricks/run-programs-in-memory.md

next id 20221003151267
# fzf
20221003151267 20221003151264 zet/20221003151264/README.md 86
# fzf Help
20221003151267 20221003151265 zet/20221003151265/README.md 7
# fzf install
20221003151267 20221003151266 zet/20221003151266/README.md 2
# fzf run with preview
20221003151267 20221007043646 zet/20221007043646/README.md 121
# findings about implementing zettelkasten
20221003151267 20221008210746 zet/20221008210746/README.md 11
# use title of zettel as fzf prompt
20221003151267 20221009162538 zet/20221009162538/README.md 2
# add menu
20221003151267 20221010074318 zet/20221010074318/README.md 5
# engineer the workflow, not the product
20221003151267 20221010153630 zet/20221010153630/README.md 5
# make symlinks for markdown titles for search optimization
20221003151267 20221011085218 zet/20221011085218/README.md 3
# how to show hidden . files in fzf
20221003151267 20221012102820 zet/20221012102820/README.md 7
# use connectome for context and keyword during spawn
20221003151267 20221014073148 zet/20221014073148/README.md 19
# reasoning behind choices for tech stack - finding dependable and long lasting technology
20221003151267 20221014153143 zet/20221014153143/README.md 8
# scroll preview window
20221003151267 20221014154934 zet/20221014154934/README.md 10
# terminal user interface (TUI) program
20221003151267 20221014190236 zet/20221014190236/README.md 4
# kb file named kb/fzf-fuzzy-find/help.md
20221003151267 20221022232030 zet/20221022232030/README.md 20
# save fzf completion history for each card

next id 20221003151280
# YAML parsing
20221003151280 20221003151279 zet/20221003151279/README.md 24
# YAML parsing yq
20221003151280 20221014190226 zet/20221014190226/README.md 4
# kb file named kb/data-engineering-pipelines/yaml-syntax.md

next id 20221003151281
# YAML
20221003151281 20221006072230 zet/20221006072230/README.md 14
# arrays in yaml
20221003151281 20221007193634 zet/20221007193634/README.md 65
# example github actions scripts
20221003151281 20221014190226 zet/20221014190226/README.md 4
# kb file named kb/data-engineering-pipelines/yaml-syntax.md
20221003151281 20221017070405 zet/20221017070405/README.md 5
# docker compose
20221003151281 20221025045053 zet/20221025045053/README.md 7
# yaml data convention for my zet implementation

next id 20221003151286
# postgres
20221003151286 20221003151285 zet/20221003151285/README.md 2
# postgres cannot find table name
20221003151286 20221014190222 zet/20221014190222/README.md 4
# kb file named kb/data-engineering-pipelines/postgres.md

next id 20221003151288
# jq pipe syntax
20221003151288 20221003151287 zet/20221003151287/README.md 5
# jq pipe and filter objects syntax
20221003151288 20221014190221 zet/20221014190221/README.md 4
# kb file named kb/data-engineering-pipelines/jq-command-reference.md

next id 20221003151289
# jq
20221003151289 20221003151287 zet/20221003151287/README.md 5
# jq pipe and filter objects syntax
20221003151289 20221009014200 zet/20221009014200/README.md 2
# concept of a command
20221003151289 20221012153019 zet/20221012153019/README.md 5
# javascript
20221003151289 20221014190221 zet/20221014190221/README.md 4
# kb file named kb/data-engineering-pipelines/jq-command-reference.md
20221003151289 20221019143424 zet/20221019143424/README.md 6
# JSON concept

next id 20221003151299
# bash tricks
20221003151299 20221003150067 zet/20221003150067/README.md 8
# vim
20221003151299 20221003150073 zet/20221003150073/README.md 7
# Run vim as a script on datafile, write to file `output`
20221003151299 20221003150132 zet/20221003150132/README.md 4
# find file with name matching regular expression
20221003151299 20221003150135 zet/20221003150135/README.md 4
# enable horizontal scroll in less
20221003151299 20221003150174 zet/20221003150174/README.md 3
# less
20221003151299 20221003150194 zet/20221003150194/README.md 9
# set the bash prompt to use vi hotkeys
20221003151299 20221003150195 zet/20221003150195/README.md 5
# desktop notification reminders in crontab with notify-send
20221003151299 20221003150198 zet/20221003150198/README.md 5
# control key mappings for sh
20221003151299 20221003150199 zet/20221003150199/README.md 4
# dpkg list files installed with package ##apt
20221003151299 20221003150685 zet/20221003150685/README.md 4
# decode hex on command line
20221003151299 20221003150726 zet/20221003150726/README.md 5
# openssl view information about certificate request
20221003151299 20221003150727 zet/20221003150727/README.md 4
# ssh escape rbash set terminal
20221003151299 20221003150792 zet/20221003150792/README.md 6
# generate cewl wordlist from file plaintext with grep
20221003151299 20221003150834 zet/20221003150834/README.md 5
# bruteforcing su passwords with sucrack
20221003151299 20221003150892 zet/20221003150892/README.md 4
# get all root process IDs
20221003151299 20221003151227 zet/20221003151227/README.md 4
# convert string to a base64 encoded UTF-16LE string to be used by powershell
20221003151299 20221003151239 zet/20221003151239/README.md 6
# make date wordlist for fuzzing with bash and parameter expansion
20221003151299 20221003151241 zet/20221003151241/README.md 5
# ping whole subnet of IPs in a loop to fingerprint OS versions
20221003151299 20221003151259 zet/20221003151259/README.md 4
# stabilize shell with script command
20221003151299 20221003151295 zet/20221003151295/README.md 3
# debugging bash
20221003151299 20221003151296 zet/20221003151296/README.md 6
# bash tricks check if current directory is writable
20221003151299 20221003151298 zet/20221003151298/README.md 3
# bash tricks run a command / program in a pty to get color output
20221003151299 20221003151300 zet/20221003151300/README.md 4
# drop newlines from stream with tr
20221003151299 20221003151301 zet/20221003151301/README.md 4
# pipe into sed command to strip color
20221003151299 20221003151302 zet/20221003151302/README.md 4
# get current script directory
20221003151299 20221003151321 zet/20221003151321/README.md 9
# get current date - linux bash scripting
20221003151299 20221003151325 zet/20221003151325/README.md 9
# Capture screenshot of url "utility to capture WebKit's rendering of a web page"
20221003151299 20221003151330 zet/20221003151330/README.md 4
# bash scripting check if a variable is empty concise
20221003151299 20221003151331 zet/20221003151331/README.md 6
# bash scripting check if a variable is empty
20221003151299 20221003151335 zet/20221003151335/README.md 3
# bash command reference
20221003151299 20221003151339 zet/20221003151339/README.md 4
# enumerate all python imports; chain 2 awk scripts with a filter
20221003151299 20221003151340 zet/20221003151340/README.md 6
# awk print unbuffered output
20221003151299 20221003151408 zet/20221003151408/README.md 65
# parse burpsuite saved request file and convert to python requests script for copying
20221003151299 20221003151424 zet/20221003151424/README.md 2
# bash scripts
20221003151299 20221003151431 zet/20221003151431/README.md 17
# awk scripting check output of grep and next line using awk "grep -A 1 -R '^# ' ."
20221003151299 20221007043646 zet/20221007043646/README.md 121
# findings about implementing zettelkasten
20221003151299 20221007181438 zet/20221007181438/README.md 12
# directories and bash scripts as commands
20221003151299 20221007220451 zet/20221007220451/README.md 7
# hacking notes hub
20221003151299 20221008005525 zet/20221008005525/README.md 9
# bash scripting pitfalls and anti-patterns
20221003151299 20221008050923 zet/20221008050923/README.md 16
# tmux buffers as bash script pipe debug file buffer
20221003151299 20221008081231 zet/20221008081231/README.md 4
# debugging
20221003151299 20221008182309 zet/20221008182309/README.md 6
# learning git internals
20221003151299 20221008212000 zet/20221008212000/README.md 2
# coding / programming
20221003151299 20221008212519 zet/20221008212519/README.md 2
# programming language
20221003151299 20221008214631 zet/20221008214631/README.md 13
# vim hotkeys and tricks
20221003151299 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151299 20221009012547 zet/20221009012547/README.md 13
# Github UI tricks
20221003151299 20221010074318 zet/20221010074318/README.md 5
# engineer the workflow, not the product
20221003151299 20221010164408 zet/20221010164408/README.md 20
# why do i have to export this line in bash or it does not work as intended
20221003151299 20221011145143 zet/20221011145143/README.md 7
# bat command pretty printer
20221003151299 20221012070318 zet/20221012070318/README.md 4
# linux terminal
20221003151299 20221012070836 zet/20221012070836/README.md 14
# asciinema website for recording terminal session
20221003151299 20221012094712 zet/20221012094712/README.md 6
# linux sort issues with locale
20221003151299 20221012102630 zet/20221012102630/README.md 5
# search other knowledge bases for links during spawn
20221003151299 20221012102820 zet/20221012102820/README.md 7
# use connectome for context and keyword during spawn
20221003151299 20221013171453 zet/20221013171453/README.md 4
# important repositories and tools
20221003151299 20221013190051 zet/20221013190051/README.md 4
# blue team
20221003151299 20221013222124 zet/20221013222124/README.md 4
# concept hub for tricks and tips
20221003151299 20221013222336 zet/20221013222336/README.md 8
# how to tell if tmux is running
20221003151299 20221014073148 zet/20221014073148/README.md 19
# reasoning behind choices for tech stack - finding dependable and long lasting technology
20221003151299 20221014074726 zet/20221014074726/README.md 11
# use appropriate language for the job
20221003151299 20221014142356 zet/20221014142356/README.md 4
# concept of a neat trick or solution
20221003151299 20221014190259 zet/20221014190259/README.md 4
# kb file named kb/bash-scripting/tricks.md
20221003151299 20221017084459 zet/20221017084459/README.md 6
# xpup xml parsing tool for scripting
20221003151299 20221018050302 zet/20221018050302/README.md 10
# use function keys or special keybindings in bash
20221003151299 20221018182017 zet/20221018182017/README.md 6
# read bash man page
20221003151299 20221018183943 zet/20221018183943/README.md 6
# shellcheck
20221003151299 20221018190312 zet/20221018190312/README.md 5
# bash scripting workflow
20221003151299 20221018193528 zet/20221018193528/README.md 13
# bash shell builtin commands
20221003151299 20221019141821 zet/20221019141821/README.md 12
# terminalforlife bash scripting youtuber

next id 20221003151309
# expect scripts
20221003151309 20221003151307 zet/20221003151307/README.md 9
# expect scripts use arguments
20221003151309 20221003151308 zet/20221003151308/README.md 4
# expect scripts record
20221003151309 20221008070202 zet/20221008070202/README.md 15
# awk bash dealing with file paths
20221003151309 20221008081231 zet/20221008081231/README.md 4
# debugging
20221003151309 20221014190251 zet/20221014190251/README.md 4
# kb file named kb/bash-scripting/expect.md

next id 20221003151318
# bash parse xml cli
20221003151318 20221003151317 zet/20221003151317/README.md 5
# bash parse xml cli with xpath using xpup
20221003151318 20221014190248 zet/20221014190248/README.md 4
# kb file named kb/bash-scripting/xml-parsing.md

next id 20221003151324
# ASCII text-based TSV / CSV file database
20221003151324 20221003151323 zet/20221003151323/README.md 5
# ASCII text-based TSV / CSV file database join tables
20221003151324 20221014190244 zet/20221014190244/README.md 4
# kb file named kb/bash-scripting/text-database-operations.md

next id 20221003151356
# python scripting urlencode every input line
20221003151356 20221014190229 zet/20221014190229/README.md 4
# kb file named kb/auto-python.md

next id 20221003151361
# python scripting test exploit locally
20221003151361 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151361 20221014190229 zet/20221014190229/README.md 4
# kb file named kb/auto-python.md

next id 20221003151362
# python scripting pwntools template binary exploit script
20221003151362 20221009005402 zet/20221009005402/README.md 4
# preparing for the OSCP exam
20221003151362 20221014190229 zet/20221014190229/README.md 4
# kb file named kb/auto-python.md

next id 20221003151377
# bash scripting find the largest N files
20221003151377 20221003151424 zet/20221003151424/README.md 2
# bash scripts
20221003151377 20221014185450 zet/20221014185450/README.md 4
# kb file named kb/auto-bash.md

next id 20221003151380
# bash scripting run neo4j in a docker
20221003151380 20221003151424 zet/20221003151424/README.md 2
# bash scripts
20221003151380 20221008054623 zet/20221008054623/README.md 7
# neo4j
20221003151380 20221009015558 zet/20221009015558/README.md 2
# docker
20221003151380 20221010142810 zet/20221010142810/README.md 180
# what is the right and secure way to develop with docker
20221003151380 20221014185450 zet/20221014185450/README.md 4
# kb file named kb/auto-bash.md

next id 20221003151383
# bash scripting get all tags and start walking their commits
20221003151383 20221003151424 zet/20221003151424/README.md 2
# bash scripts
20221003151383 20221010152742 zet/20221010152742/README.md 7
# how to jump right to a recent card on github
20221003151383 20221014185450 zet/20221014185450/README.md 4
# kb file named kb/auto-bash.md

next id 20221003151384
# bash scripting clone repo into temp dir
20221003151384 20221003151424 zet/20221003151424/README.md 2
# bash scripts
20221003151384 20221014185450 zet/20221014185450/README.md 4
# kb file named kb/auto-bash.md

next id 20221003151386
# bash scripting define bash array
20221003151386 20221003151424 zet/20221003151424/README.md 2
# bash scripts
20221003151386 20221014185450 zet/20221014185450/README.md 4
# kb file named kb/auto-bash.md

next id 20221003151394
# bash scripting watch failed ssh login attempts as a live stream
20221003151394 20221003151424 zet/20221003151424/README.md 2
# bash scripts
20221003151394 20221014185450 zet/20221014185450/README.md 4
# kb file named kb/auto-bash.md

next id 20221003151402
# bash scripting prepend gzip magic bytes
20221003151402 20221003151424 zet/20221003151424/README.md 2
# bash scripts
20221003151402 20221014185450 zet/20221014185450/README.md 4
# kb file named kb/auto-bash.md

next id 20221003151403
# bash scripting extract PDF embedded file stream for use with PDF file attach exploits like mpdf
20221003151403 20221003151424 zet/20221003151424/README.md 2
# bash scripts
20221003151403 20221010064819 zet/20221010064819/README.md 31
# locating the origin of files by hash to determine version
20221003151403 20221014185450 zet/20221014185450/README.md 4
# kb file named kb/auto-bash.md

next id 20221003151418
# bash scripting parse args with case statement
20221003151418 20221003151424 zet/20221003151424/README.md 2
# bash scripts
20221003151418 20221014185450 zet/20221014185450/README.md 4
# kb file named kb/auto-bash.md

next id 20221003151421
# bash scripting find all git repositories in a directory
20221003151421 20221003151424 zet/20221003151424/README.md 2
# bash scripts
20221003151421 20221014185450 zet/20221014185450/README.md 4
# kb file named kb/auto-bash.md

next id 20221003151438
# awk scripting attempt to reuse credentials using hydra and keep track of usernames and passwords tried
20221003151438 20221003151441 zet/20221003151441/README.md 2
# awk scripting
20221003151438 20221010074318 zet/20221010074318/README.md 5
# engineer the workflow, not the product
20221003151438 20221014185509 zet/20221014185509/README.md 4
# kb file named kb/auto-awk.md

```

` zet/20221025005842/README.md `

# Related

- [20221013221136](/zet/20221013221136/README.md) graph query language for zettelkasten
- [20221005200242](/zet/20221005200242/README.md) empty zettels to fix
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221008042814](/zet/20221008042814/README.md) WIP

Tags:

    #idea
