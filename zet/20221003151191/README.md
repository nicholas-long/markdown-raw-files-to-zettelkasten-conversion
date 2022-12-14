# HTTP uncommon ideas list
- [20221003151189](/zet/20221003151189/README.md) HTTP specific HTTP server exploit possibilities
- mention github/source control -> go look it up, find source
  - organizations -> people and their projects / commits
  - check commit history for secrets / creds
- have username list -> fuzz home directories like `/~user` `/user`
- generate cewl wordlist for login bruteforcing, busting directories, subdomains
- generated file -> metadata / exiftool
- web app with secrets / 2fa -> test default secrets
- bypassing restrictions -> [20221003151185](/zet/20221003151185/README.md) HTTP bypassing restrictions
- upload -> bypassing extension filtering ( search "web server executable extensions" php in kb )
- unlikely injection tests
  - NoSQL injection
  - LDAP injection
  - XSS - dalfox
  - log4j log4shell injection - test every field, parameter, and http header with jndi payload (especially Java stack)
- weird HTTP response headers
- JWT JSON web tokens
  - HS variety -> crack secret with hashcat
  - got secret / key -> target cookie data for injection
- cookie deserialization
- parameter pollution
- webdav - old protocol
  - davtest unauth
  - davtest authenticated
  - target file passwd.dav
- SSRF server side request forgery
- apache delete files -> delete .htaccess and possibly see php source
- retry dirbusting with response sizes instead of hiding 404 to find weird 404 endpoints
- 403 forbidden servers / vhosts -> target http config information & find out why
- links with `target="_blank"` - tab nabbing client attack phishing redirect
- cgi-bin old servers -> shellshock
- everything list (including web server version) [EVERYTHING](EVERYTHING.md#everything)

` zet/20221003151191/README.md `

# Related

- [20221003150450](/zet/20221003150450/README.md) padbuster oracle padding to brute force one byte at a time for block cipher encrypted cookies
- [20221003151189](/zet/20221003151189/README.md) HTTP specific HTTP server exploit possibilities
- [20221003151185](/zet/20221003151185/README.md) HTTP bypassing restrictions
- [20221003150831](/zet/20221003150831/README.md) davtest try uploading files to webDAV with or without credentials
- [20221018160416](/zet/20221018160416/README.md) phishing or credential harvesting concept
- [20221015014643](/zet/20221015014643/README.md) overengineering and overthinking
- [20221003151175](/zet/20221003151175/README.md) EVERYTHING - common to try list
- [20221014185619](/zet/20221014185619/README.md) kb file named kb/hacking/to-try-lists/HTTP.md
- [20221003151180](/zet/20221003151180/README.md) HTTP UNCOMMON HTTP ( hacktricks )
- [20221003151177](/zet/20221003151177/README.md) Stuck to try list
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221003150252](/zet/20221003150252/README.md) httponly cookie option
- [20221003150968](/zet/20221003150968/README.md) document.cookie and XSS
- [20221003151192](/zet/20221003151192/README.md) HTTP to try list
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221007044552](/zet/20221007044552/README.md) todo or to-try list
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md
- [20221003150989](/zet/20221003150989/README.md) GraphQL API pentesting to try list

Tags:

    #to-try-list #hacking #http 
