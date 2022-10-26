# got source code - analysis to try list
- secrets / creds
- paths and filenames
- grep vulnerable functions
- security antipatterns
- test code locally / vm / container
  - custom code and vulnerable third party lib exploits
- targets
  - code execution
  - file access
- deserialization vulnerabilities
- templates
- vulnerable third party libraries
- git repositories
  - history log
  - branches
- vulnerabilities common to the programming language
  - PHP
    - common antipatterns:
      - including code based on user imput
      - SQLi
        - mysqli_multi_query -> stacked ; queries
          - update
    - code execution
    - eval
    - assert - php code injection
    - regular expressions that execute code
    - fuzzy equal
      - type juggling http post data (JSON, XML, url encoded)
    - laravel : SQLi with `whereRaw` for manipulating raw query
  - python
    - eval
    - pickle
    - jinja
    - web servers running in debug mode
    - flask `send_file` - dir traversal
    - os.path.join
      - double slashes bypass `../` dir traversal filters `/path/to/whatever//root/.ssh/id_rsa`
    - python2 + input - evaluates code
  - ruby
    - mass assignment
  - javascript
    - JSON object prototype pollution
      - recommend local testing - potentially destructive to server - revert
      - `__proto__` and `__proto__.__proto__`
    - fuzzy equal
    - `node-serialize` `unserialize`
  - golang
    - user input to controllers -> `http.Request`
    - shell exec -> `exec.Command`
    - os.Open - read files
    - `filepath.Clean` with no leading / -> no filtering of `../`
  - C
    - buffer lengths
    - pointers
    - printf, fprintf, sprintf and other forms with user supplied format strings
    - system()
      - not full path to executable -> PATH injection
    - loops and off by one `<` vs `<=`
  - C#
    - config XML and XSLT - connection strings, secrets
    - `Deserialize` `JsonConvert` `DeserializeJson` `DeserializeObject` `BinaryFormatter`
    - `System.Diagnostics.Process` `Process.Start` `Process`
    - XML, `XDocument` - XXE
  - Java
    - XML
    - serialization
      - `ObjectInputStream` `readUnshared` `readObject`
      - bytes AC ED hex rO0AB base64 -> serialization
    - `Runtime.getRuntime().exec` run commands

` zet/20221003151178/README.md `

# Related

- [20221014185622](/zet/20221014185622/README.md) kb file named kb/hacking/to-try-lists/got-source-code.md
- [20221020203509](/zet/20221020203509/README.md) concept of an antipattern
- [20221003151023](/zet/20221003151023/README.md) analyzing source code
- [20221003151021](/zet/20221003151021/README.md) analyzing source code PHP code
- [20221003151210](/zet/20221003151210/README.md) linux privilege escalation
- [20221003151209](/zet/20221003151209/README.md) linux privilege escalation exploiting scripts on linux
- [20221015010704](/zet/20221015010704/README.md) things that need splitting up
- [20221015004252](/zet/20221015004252/README.md) htb opensource machine
- [20221008214935](/zet/20221008214935/README.md) go language
- [20221003150240](/zet/20221003150240/README.md) analyze php source code for malicious code and things that look like webshells
- [20221003151192](/zet/20221003151192/README.md) HTTP to try list
- [20221008081231](/zet/20221008081231/README.md) debugging
- [20221007194303](/zet/20221007194303/README.md) github

Tags:

    #to-try-list #programming #coding #hacking #exploit #file
