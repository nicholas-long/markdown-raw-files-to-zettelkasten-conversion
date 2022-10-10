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

- [20221003151403](/zet/20221003151403/README.md) bash scripting extract PDF embedded file stream for use with PDF file attach exploits like mpdf
- [20221003150660](/zet/20221003150660/README.md) data analysis commands binwalk find and extract LZMA zip streams quickly
- [20221003150237](/zet/20221003150237/README.md) extract command for file type tar.gz
- [20221003150236](/zet/20221003150236/README.md) extract command for file type tar.xz
- [20221003150238](/zet/20221003150238/README.md) extract command for file type deb
- [20221003150239](/zet/20221003150239/README.md) extract command for file type
- [20221003151382](/zet/20221003151382/README.md) bash scripting take only unique git hashes and do md5 hashes of those files
- [20221008195148](/zet/20221008195148/README.md) seclists etc files project
- [20221007194303](/zet/20221007194303/README.md) github
- [20221008213357](/zet/20221008213357/README.md) version of program
- [20221006025730](/zet/20221006025730/README.md) apt repositories
- [20221003150285](/zet/20221003150285/README.md) default webroots BSD systems OpenBSD httpd
- [20221003150383](/zet/20221003150383/README.md) threatcheck help obfuscate windows executable strings
- [20221008221548](/zet/20221008221548/README.md) website
- [20221003151210](/zet/20221003151210/README.md) linux privilege escalation
- [20221003151207](/zet/20221003151207/README.md) windows privilege escalation
- [20221008221940](/zet/20221008221940/README.md) URL
- [20221008215400](/zet/20221008215400/README.md) file
- [20221008215139](/zet/20221008215139/README.md) hash / checksum

Tags:

    #todo #idea
