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
# References
- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:
    #assorted #awk #script
