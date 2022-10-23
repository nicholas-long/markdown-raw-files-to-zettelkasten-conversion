# concept of an antipattern

- concept of `antipattern`
- antipattern is a misconfiguration or dumb shortcut that programmers or sysadmins take that leads to vulnerabilities
  - like a bad idea that everyone will have eventually when learning how to program
  - example: "hey if i include this parameter, i can easily select the file to include"
  - often get copied around and spread through stack overflow answers
  - attitude of getting it working first, worrying about security later... later = never
- misunderstanding of
  - implications of behavior as it relates to other programs
    - example: in windows, reading arbitrary files = sending NTLMv2 hashes somewhere on the LAN
  - the complexity of a task
    - example: sysadmin leaves port open, assuming nobody will search the entire IPv4 space to find it, not knowing it will eventually be indexed by shodan
    - example: hidden directories vs. gobuster
  - security boundaries
    - example: authenticated users can call which endpoints? with what data? should they actually have such permission?
    - common issue: IDOR
      - checking if an account is authenticated before it can see secret things, but not that the account should have access to those things
- antipatterns are not the only source of security vulnerabilities

```
```

` zet/20221020203509/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003151178](/zet/20221003151178/README.md) got source code - analysis to try list
- [20221003151023](/zet/20221003151023/README.md) analyzing source code

Tags:

    #idea #programming #hacking
