# SMB old SMB exploits
- Samba smbd CVE-2010-0926 before 3.3.11, 3.4.x before 3.4.6, and 3.5.x before 3.5.0rc3 default config -> symlink dir traversal
- Samba smbd CVE-2017-7494 versions 3.5.0 to 4.4.14, 4.5.10, and 4.6.4 - is_known_pipename
  - these versions are 3 separate ranges, i.e. anything less than 4.5.10 is vuln ? 4.5.4 proved vulnerable
  - non metasploit version https://github.com/joxeankoret/CVE-2017-7494
- MS17-010 eternalblue - should be caught by nmap vuln scan
- smb v1
  - ms08-067-netapi - but use DOS reverse shell instead of meterpreter

` zet/20221003151197/README.md `

# Related

- [20221003151152](/zet/20221003151152/README.md) windows XP and windows server 2003
- [20221014185612](/zet/20221014185612/README.md) kb file named kb/hacking/to-try-lists/SMB.md
- [20221013190422](/zet/20221013190422/README.md) headline exploits
- [20221003151030](/zet/20221003151030/README.md) eternalblue MS17-010 - working
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221007044552](/zet/20221007044552/README.md) todo or to-try list
- [20221003151198](/zet/20221003151198/README.md) SMB to try list
- ~/kb/hacking/to-try-lists/SMB.md

Tags:

    #to-try-list #hacking #smb 
