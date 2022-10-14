# linux capabilities inheritance after exec
capabilites are only inherited after exec if the target program has inherit capabilites set
example:
```bash
setcap cap_dac_override+pe ./registerdns  # pe flags say that running the program acquires the capability.
setcap cap_dac_override+i /usr/bin/net    # i flag says it's allowed to inherit the capability from the calling program.
```

` zet/20221003150170/README.md `

# Related

- [20221014190149](/zet/20221014190149/README.md) kb file named kb/linux/capabilities.md
- [20221003150171](/zet/20221003150171/README.md) linux capabilities
- ~/kb/linux/capabilities.md

Tags:

    #linux #capabilities 
