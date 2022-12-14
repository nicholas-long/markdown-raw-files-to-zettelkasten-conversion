# OWASP top 10 api bugs
- broken object level authorization = IDOR
  - remove cookies and see if authenticated request still works
  - everything from IDOR list
- broken function level authorization - permission IDOR
  - not checking permissions
  - look for complex permissions
  - everything from IDOR list
- excessive data exposure
  - relying on clients to filter data before displaying to user
  - APIs returning too much information
  - exploit IDOR type vulns to disclose info for other users
  - look for large amounts of data (JSON) in burp
  - confidential things - decide if information is a risk
  - enumerate APIs you wouldn't normally hit
- broken user auth mechanism
  - unauthenticated APIs
  - API keys found (+google dorks)
  - APIs generating a token without securing it
  - test
    - do recon to find APIs with certain keys
    - test login systems
- security misconfiguration
  - default configs
  - not updating
  - example: CORS + CSRF
    - send and receive data for client side attacks
- injection
  - SQL, graphql, noSQL, command injection, etc.
  - payloadsallthethings
  - common
    - not-for-public internal APIs
    - IOT
- lack of resources and rate limiting
  - DoS
  - no rate limit could be a problem
    - bruteforcing
      - users
      - IDs
  - having a rate limit could be a problem
    - account lockout
    - block access to resource?
- improper assets management
  - deprecated API versions
    - try changing `/v2/` to `/v1/` etc
    - disclosed reports may still apply
- mass assignment
  - modify object properties not supposed to
  - try adding extra parameters or changing other properties of resource
    - could chain with something like XSS
  - JSON -> pollution
  - look for APIs built on a framework
- insufficient logging and monitoring
  - lack of incident response

` zet/20221003150971/README.md `

# Related

- [20221014185744](/zet/20221014185744/README.md) kb file named kb/hacking/methodology/owasp-top-10-api-bugs.md
- [20221003151005](/zet/20221003151005/README.md) API enumeration bug hunting workflow
- [20221003151006](/zet/20221003151006/README.md) API enumeration
- [20221003151186](/zet/20221003151186/README.md) HTTP API and POST endpoints
- [20221019143424](/zet/20221019143424/README.md) JSON concept
- [20221003150976](/zet/20221003150976/README.md) IDOR general steps
- [20221006215353](/zet/20221006215353/README.md) InsiderPHD

Tags:

    #to-try-list #hacking #videonotes #notes
