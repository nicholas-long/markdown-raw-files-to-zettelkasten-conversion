# bash scripting decorate XML with colors for tags, attributes, and content
~/kb/bash-scripting/decorate-xml.sh
```bash
#!/bin/bash
# decorate XML with colors for tags, attributes, and content
~/kb/bash-scripting/colorize.sh -g '>[^<]+<' -c '\[[^]]+' -r CDATA -y '<[^>]+ [^>]*>'
```

~/kb/bash-scripting/decorate-xml.sh
# References
- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted
