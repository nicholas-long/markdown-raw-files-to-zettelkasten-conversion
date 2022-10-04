# HTTP uncommon ideas list
- [specific HTTP server exploit possibilities](HTTP.md#specific-http-server-exploit-possibilities)
- mention github/source control -> go look it up, find source
  - organizations -> people and their projects / commits
  - check commit history for secrets / creds
- have username list -> fuzz home directories like `/~user` `/user`
- generate cewl wordlist for login bruteforcing, busting directories, subdomains
- generated file -> metadata / exiftool
- web app with secrets / 2fa -> test default secrets
- bypassing restrictions -> [bypassing restrictions](HTTP.md#bypassing-restrictions)
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

# References
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:
    #assorted #to-try-list
