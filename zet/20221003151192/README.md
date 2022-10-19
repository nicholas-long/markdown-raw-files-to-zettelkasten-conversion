# HTTP TRY
- quick wfuzz dirbust / common.txt
- robots.txt
- web enumeration quick commands
- nikto
- busting -> copy up busting to try list to new paragraph, run through paths, add
  - even if you identify CMS and version, find exposed files
  - try usernames as potential directories / files
  - don't ignore status codes
    - don't ignore 302 or you miss redirect pages with content
    - don't ignore 403 except dotfiles
- manual inspection (view source) see if content discloses anything useful
  - find forms
- found login form -> [20221003151184](/zet/20221003151184/README.md) HTTP found login form
  - google / seclists default creds for service
  - try service name as username / password / both
  - compromised -> [20221003151182](/zet/20221003151182/README.md) HTTP compromised CMS login
- found CMS -> [20221003151188](/zet/20221003151188/README.md) HTTP found CMS
  - compromised CMS -> [20221003151182](/zet/20221003151182/README.md) HTTP compromised CMS login
- LFI or dir traversal -> [20221003151187](/zet/20221003151187/README.md) HTTP LFI or dir traversal
  - common rabbit hole -> keep enumerating
    - file read -> keep enumerating, find interesting configs, logs, code, creds to exfil
    - LFI -> keep enumerating, find writable logs or files to execute
- file upload
  - apache -> .htaccess
- API and POST endpoints -> [20221003151186](/zet/20221003151186/README.md) HTTP API and POST endpoints
  - 302 redirect page -> check for content
- fuzz dynamic content for vulnerabilities -> [20221003151183](/zet/20221003151183/README.md) HTTP vulnerability finding and fuzzing
  - SSTI polyglot payload
  - seclists fuzzing special chars
- cookie: object / base64 / JSON / session token -> break or abruptly terminate input
- likely injection tests
  - SQLi
    - [20221003151204](/zet/20221003151204/README.md) got access to databases - general SQL
    - no sqlmap -> wfuzz with wordlists in /usr/share/seclists/Fuzzing/SQLi/
    - dump data
    - ordering column parameter and order by injection -> nested query `limit (select ...)`
  - SSTI polyglot payload
  - XML
    - XXE xml external entity
    - XPath injection
- vhost enumeration
  - hostnames from nmap output
  - brute force vhost subdomains
- got source code -> [20221003151178](/zet/20221003151178/README.md) got source code - analysis
- [20221003151191](/zet/20221003151191/README.md) HTTP uncommon ideas list
- [20221003151180](/zet/20221003151180/README.md) HTTP UNCOMMON HTTP ( hacktricks )

` zet/20221003151192/README.md `

# Related

- [20221003150738](/zet/20221003150738/README.md) feroxbuster dirbusting
- [20221003150831](/zet/20221003150831/README.md) davtest try uploading files to webDAV with or without credentials
- [20221003150812](/zet/20221003150812/README.md) wfuzz fuzzing details
- [20221003150874](/zet/20221003150874/README.md) nikto command
- [20221003150709](/zet/20221003150709/README.md) sqlmap
- [20221003150308](/zet/20221003150308/README.md) burpsuite add header to forwarded requests, like X-Forwarded-For
- [20221003151175](/zet/20221003151175/README.md) EVERYTHING - common to try list
- [20221014185619](/zet/20221014185619/README.md) kb file named kb/hacking/to-try-lists/HTTP.md
- [20221003150291](/zet/20221003150291/README.md) apache 2fa default key
- [20221003150331](/zet/20221003150331/README.md) log4j log4shell
- [20221013180230](/zet/20221013180230/README.md) session cookie, API key, or access token
- [20221003151204](/zet/20221003151204/README.md) got access to databases - general SQL
- [20221003151168](/zet/20221003151168/README.md) HTTP proxy / squid proxy
- [20221003150976](/zet/20221003150976/README.md) IDOR general steps
- [20221003151178](/zet/20221003151178/README.md) got source code - analysis
- [20221003151180](/zet/20221003151180/README.md) HTTP UNCOMMON HTTP ( hacktricks )
- [20221003151191](/zet/20221003151191/README.md) HTTP uncommon ideas list
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221003151214](/zet/20221003151214/README.md) got leaked files
- [20221003151167](/zet/20221003151167/README.md) got hashes
- [20221003151183](/zet/20221003151183/README.md) HTTP vulnerability finding and fuzzing
- [20221003151186](/zet/20221003151186/README.md) HTTP API and POST endpoints
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003151226](/zet/20221003151226/README.md) php filter LFI to iconv RCE
- [20221003150581](/zet/20221003150581/README.md) php LFI include PHP filter URL
- [20221003151187](/zet/20221003151187/README.md) HTTP LFI or dir traversal
- [20221003151182](/zet/20221003151182/README.md) HTTP compromised CMS login
- [20221003151188](/zet/20221003151188/README.md) HTTP found CMS
- [20221003151184](/zet/20221003151184/README.md) HTTP found login form
- [20221011190351](/zet/20221011190351/README.md) fix to try list cards
- [20221008221822](/zet/20221008221822/README.md) www - the web
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221007044552](/zet/20221007044552/README.md) todo or to-try list
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md
- got access to database - general SQL - where?

Tags:

    #to-try-list #hacking #http 
