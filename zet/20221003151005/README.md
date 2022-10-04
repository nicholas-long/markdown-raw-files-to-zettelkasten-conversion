# API enumeration bug hunting workflow
tips from InsiderPhD
- target endpoints that have the most complex business logic
- tools
  - arjun for discovering parameters
  - burp suite for fuzzing and requests
  - wfuzz/ffuf for fuzzing
  - kiterunner
- workflow
  - mess around on the site with burp suite recording requests
    - "press all the buttons"
  - look for
    - endpoints returning info
    - IDs
    - signs of internal APIs
    - reflected input
    - self documenting APIs
      - look for swagger, usually in `/__swagger__/`
  - assess API structure
    - find all endpoints for resources and what they do
    - assess impact of changing things
    - look for self documenting API endpoints to quickly find all the other endpoints
  - enumerate resources
  - enumerate parameters for endpoints
  - run wfuzz/ffuf through burp to get all the endpoints in burp automatically
- wordlists
  - seclists
    - raft words
  - fuzzdb
  - nahamsec video on wordlist creation
  - API wordlist creation
    - similar services' documented APIs
    - cewl wordlist from site
      - waybackmachine
    - append any domain specific knowledge to wordlists

# Related

- [20221003151006](/zet/20221003151006/README.md) API enumeration
- ~/kb/hacking/methodology/API-enumeration.md

Tags:

    #assorted #hacking #api
