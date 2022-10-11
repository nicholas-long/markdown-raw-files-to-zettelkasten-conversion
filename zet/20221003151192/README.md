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
- found login form -> [found login form](HTTP.md#found-login-form)
  - google / seclists default creds for service
  - try service name as username / password / both
  - compromised -> [compromised CMS login](HTTP.md#compromised-cms-login)
- found CMS -> [found CMS](HTTP.md#found-cms)
  - compromised CMS -> [compromised CMS login](HTTP.md#compromised-cms-login)
- LFI or dir traversal -> [LFI or dir traversal](HTTP.md#lfi-or-dir-traversal)
  - common rabbit hole -> keep enumerating
    - file read -> keep enumerating, find interesting configs, logs, code, creds to exfil
    - LFI -> keep enumerating, find writable logs or files to execute
- file upload
  - apache -> .htaccess
- API and POST endpoints -> [API and POST endpoints](HTTP.md#api-and-post-endpoints)
  - 302 redirect page -> check for content
- fuzz dynamic content for vulnerabilities -> [vulnerability finding and fuzzing](HTTP.md#vulnerability-finding-and-fuzzing)
  - SSTI polyglot payload
  - seclists fuzzing special chars
- cookie: object / base64 / JSON / session token -> break or abruptly terminate input
- likely injection tests
  - SQLi
    - [got access to databases - general SQL](got-access-to-databases-general-SQL.md#got-access-to-databases---general-sql)
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
- got source code -> [got source code - analysis](got-source-code.md#got-source-code---analysis)
- uncommon ideas [uncommon ideas list](HTTP.md#uncommon-ideas-list)

` zet/20221003151192/README.md `

# Related

- [20221011190351](/zet/20221011190351/README.md) fix to try list cards
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221008221822](/zet/20221008221822/README.md) www - the web
- [20221007220451](/zet/20221007220451/README.md) hacking notes node
- [20221007044552](/zet/20221007044552/README.md) todo or to-try list
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:

    #to-try-list #hacking #http 
