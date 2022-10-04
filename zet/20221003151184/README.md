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

# Related

- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:

    #assorted #to-try-list #hacking #http
