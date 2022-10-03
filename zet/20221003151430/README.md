# awk scripting constrict line widths of input text stream
~/kb/awk-scripting/line-lengths.awk
```awk
#!/usr/bin/awk -f
# constrict line widths of input text stream
BEGIN {
  linemax = 50
}
{
  output = output $0
  while (length(output) > linemax) {
    print substr(output,1,linemax)
    output = substr(output,linemax+1)
  }
}
END {
  print output
}
```

~/kb/awk-scripting/line-lengths.awk
# References
- [20221003151441](/zet/20221003151441/) awk scripting
- ~/kb/auto-awk.md

Tags:
    #assorted

