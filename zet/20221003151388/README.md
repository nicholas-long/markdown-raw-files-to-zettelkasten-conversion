# bash scripting search through tldr command descriptions with fzf and display file with bat
~/kb/bash-scripting/search-tldr-commands-text.sh
```bash
#!/bin/bash

# search through tldr command descriptions with fzf and display file with bat

find ~/.local/share/tldr/tldr/pages -type f -name '*.md' | \
  xargs awk 'BEGIN { OFS="\t" } /^# / { h = $2 } /^- / || /^> / { print FILENAME,FNR,h,$0 }' | \
  fzf | \
  awk -F $'\t' '{system("bat " $1) }'
```

~/kb/bash-scripting/search-tldr-commands-text.sh
` zet/20221003151388/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
