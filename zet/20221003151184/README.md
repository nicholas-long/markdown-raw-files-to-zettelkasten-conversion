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

- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221007220451](/zet/20221007220451/README.md) hacking notes node
- [20221007044552](/zet/20221007044552/README.md) todo or to-try list
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:

    #to-try-list #hacking #http 
