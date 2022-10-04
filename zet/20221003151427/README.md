# awk scripting awk print markdown snippet text between backtick lines
~/kb/awk-scripting/snippet.awk
```awk
# awk print markdown snippet text between backtick lines
BEGIN { printing = 0 }
printing == 1 && $0 !~ /^```/ {print}
/^```/ {
  if (printing == 0) {
    printing = 1
  } else {
    printing = 0
  }
}
```

~/kb/awk-scripting/snippet.awk
# References
- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:
    #assorted
