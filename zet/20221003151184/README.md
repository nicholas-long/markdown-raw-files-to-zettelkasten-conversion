# HTTP found login form
- found login form
  - default creds
  - sqli
    - sqli filtering
  - SSTI
  - authentication bypass
    - wildcards
  - reset password
    - username parameter -> IDOR, account takeover
    - leak reset tokens
  - error message username enumeration
    - forgot password forms - applies as well
    - create user form if there is an error when user ID already exists
  - time based username enumeration - logic to check if user exists is very common + big hash algos
  - register account to find authenticated endpoints
  - brute forcing
  - xsrf
    - add self as admin
  - session attacks
    - steal session id, maybe XSS
    - clickjacking (if no X frame options set )

` zet/20221003151184/README.md `

# Related

- [20221008213825](/zet/20221008213825/README.md) hacker concept of CMS - slang lingo for web app / service
- [20221003151025](/zet/20221003151025/README.md) JWT token concept
- [20221019151504](/zet/20221019151504/README.md) error message username enumeration
- [20221003150849](/zet/20221003150849/README.md) hydra brute force HTTP basic authentication
- [20221003150709](/zet/20221003150709/README.md) sqlmap
- [20221003151408](/zet/20221003151408/README.md) parse burpsuite saved request file and convert to python requests script for copying
- [20221017060902](/zet/20221017060902/README.md) finding known vulnerabilities and exploits
- [20221003151183](/zet/20221003151183/README.md) HTTP vulnerability finding and fuzzing
- [20221003151175](/zet/20221003151175/README.md) EVERYTHING - common to try list
- [20221014185619](/zet/20221014185619/README.md) kb file named kb/hacking/to-try-lists/HTTP.md
- [20221003150291](/zet/20221003150291/README.md) apache 2fa default key
- [20221013180230](/zet/20221013180230/README.md) session cookie, API key, or access token
- [20221003151192](/zet/20221003151192/README.md) HTTP to try list
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221007044552](/zet/20221007044552/README.md) todo or to-try list
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md
- [20221003150989](/zet/20221003150989/README.md) GraphQL API pentesting to try list

Tags:

    #to-try-list #hacking #http 
