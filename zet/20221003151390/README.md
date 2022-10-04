# bash scripting get headings from wikipedia page
~/kb/bash-scripting/get-wikipedia-info.sh
```bash
#!/bin/bash

# get headings from wikipedia page
curl https://en.wikipedia.org/wiki/Block_cipher | html2text | grep '^*'
```

~/kb/bash-scripting/get-wikipedia-info.sh
# Related

- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:

    #bash #script 
