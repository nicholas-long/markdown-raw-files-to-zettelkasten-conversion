# locating the origin of files by hash to determine version

the concept of `locating the origin of files by hash to determine version`

- card idea: search by md5 hash - filehash.io
  - WIP
  - needs extensive front end work - too busy

- data available to search:
  - linux package managers
    - debian apt repository
    - ubuntu apt repository
  - top 30k github repositories with release tags
    - circa November 2021
    - how do you get this data?
      - it's difficult but not impossible
      - an individual user accessing the internet through one IP address would be unable to access information about new repositories being created fast enough to keep up without multiple accounts
      - 60 api requests allowed per hour per IP
      - handful of API keys - each one can crank out 5000 per hour
      - no i didn't hack anybody
    - how many repositories are there?
      - a lot
      - 14 gigabytes of gzipped JSON - no idea how many bytes it is uncompressed
        - URLs were stripped from JSON API responses because I thought I didn't need them.
          - lesson learned
          - repos with weird unicode chars
          - renamed repos
          - interesting HTTP status codes
            - repos taken down for violations of stuff
            - things that look like source code leaks from names? unable to see content.
      - takes 1.5 hours to process the stream with `jq` queries

` zet/20221010064819/README.md `

# Related

- 20221003151403
- 20221003150660
- 20221003150237
- 20221003150236
- 20221003150238
- 20221003150239
- 20221003151382
- 20221008195148
- 20221007194303
- 20221008213357
- 20221006025730
- 20221003150285
- 20221003150383
- 20221008221548
- 20221003151210
- 20221003151207
- 20221008221940
- 20221008215400
- 20221008215139

Tags:

    #todo #idea
