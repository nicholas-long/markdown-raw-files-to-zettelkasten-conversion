# awk scripting combine lines from two files combinatorically with symbol between
~/kb/awk-scripting/combine-files.awk
```awk
#!/usr/bin/awk -f
# combine lines from two files combinatorically with symbol between
BEGIN {
  if (!symbol) symbol = "\t"
}
ARGIND == 1 {
  lines[$0] = 1
}
ARGIND == 2 {
  for (c in lines) {
    printf "%s%s%s\n", c, symbol, $0
  }
}
```

~/kb/awk-scripting/combine-files.awk
` zet/20221003151433/README.md `

# Related

- [20221014185509](/zet/20221014185509/README.md) kb file named kb/auto-awk.md
- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:

    #awk #script 
