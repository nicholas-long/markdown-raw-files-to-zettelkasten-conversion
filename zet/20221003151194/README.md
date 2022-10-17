# procedure
- scan ( full port, service )
  - unknown service - try `-A` flag
- keep list of clues / hints as a wordlist
- paste in to try list for every service
  - prioritize
    - dump data from anon shares before web
- try name of service, software, company / site name, computer name, usernames as passwords or usernames
- what is different between similar web servers or HTTP vs. HTTPS
- cewl wordlist
- scan with `--vuln`
- scan UDP ( slow, few ports as possible )
- scan services with scripts
- retry enumeration with new credentials on discovery
- look up versions [20221017060902](/zet/20221017060902/README.md) finding known vulnerabilities and exploits
  - metasploit exploits and scanners - locate during enumeration, but wait to run on exam
- OSINT
  - users and their potential passwords
    - likes/interests -> wikipedia -> cewl -> password list
    - leaked databases
  - github or other public source control
    - secrets
    - creds
    - information disclosure

` zet/20221003151194/README.md `

# Related

- [20221003150644](/zet/20221003150644/README.md) nmap all ports command
- [20221003150795](/zet/20221003150795/README.md) generate cewl wordlist from website
- [20221017060902](/zet/20221017060902/README.md) finding known vulnerabilities and exploits
- [20221003151175](/zet/20221003151175/README.md) EVERYTHING - common to try list
- [20221011181920](/zet/20221011181920/README.md) working notes - foothold
- [20221011181531](/zet/20221011181531/README.md) steps
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub

Tags:

    
