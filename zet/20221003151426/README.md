# awk scripting combine lines with all previous lines combinatorically
~/kb/awk-scripting/live-combine.awk
```awk
#!/usr/bin/awk -f
# combine lines with all previous lines combinatorically
{
  for (prev1 in seen) {
    print prev1 $0
  }
  seen[$0] = 1
}
```

~/kb/awk-scripting/live-combine.awk
` zet/20221003151426/README.md `

# Related

- [20221014185509](/zet/20221014185509/README.md) kb file named kb/auto-awk.md
- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:

    #awk #script 
