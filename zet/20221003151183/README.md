# HTTP vulnerability finding and fuzzing
- fuzz all dynamic content
  - type juggling http post data
    - change content type to JSON and try different types for params
      - target things that might be compared with `==` and try changing them to `true`
    - brackets -> arrays
  - parameters
  - REST APIs -> get params and url params
  - IDs -> IDOR
  - object / base64 / JSON / session token -> break or abruptly terminate input
  - fuzz hidden parameters, wordlist seclists/Discovery/Web-Content/burp-parameter-names.txt
  - fuzz with different HTTP methods (ex: POST might work and accept GET params)
  - fuzz headers and cookies if their values appear on page
    - fuzz special chars
    - payload tests
  - generated content like reports, emails, or logs
  - general POST message vulnerabilities
  - JSON object prototype pollution
  - fuzz all parameters as get and post with get and post http methods

` zet/20221003151183/README.md `

# Related

- [20221003151020](/zet/20221003151020/README.md) SSTI polyglot payload
- [20221003150968](/zet/20221003150968/README.md) document.cookie and XSS
- [20221003150976](/zet/20221003150976/README.md) IDOR general steps
- [20221003151186](/zet/20221003151186/README.md) HTTP API and POST endpoints
- [20221003151184](/zet/20221003151184/README.md) HTTP found login form
- [20221014185619](/zet/20221014185619/README.md) kb file named kb/hacking/to-try-lists/HTTP.md
- [20221003151192](/zet/20221003151192/README.md) HTTP to try list
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:

    #to-try-list #hacking #http 
