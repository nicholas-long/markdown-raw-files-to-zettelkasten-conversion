# awk scripting replace words with colorized versions
~/kb/awk-scripting/colorize.awk
```awk
#!/usr/bin/awk -f

# replace words with colorized versions

BEGIN {
  # color constants
  NORMAL = "\033[0m"
  BLACK = "\033[30m"
  BLUE = "\033[34m"
  RED = "\033[31m"
  MAGENTA = "\033[35m"
  GREEN = "\033[32m"
  CYAN = "\033[36m"
  YELLOW = "\033[33m"
  WHITE = "\033[37m"
}
{
  gsub(/root/, RED "root" NORMAL)
}
{ print }
```

~/kb/awk-scripting/colorize.awk
` zet/20221003151440/README.md `

# Related

- [20221014185509](/zet/20221014185509/README.md) kb file named kb/auto-awk.md
- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:

    #awk #script 
