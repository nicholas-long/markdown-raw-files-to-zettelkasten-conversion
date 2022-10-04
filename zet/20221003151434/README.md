# awk scripting get column headings from first line of CSV
~/kb/awk-scripting/get-columns.awk
```awk
#!/usr/bin/awk -f
# get column headings from first line of CSV
NR == 1 {
  for (i = 1; i < NF; i++) print i, $i
}
```

~/kb/awk-scripting/get-columns.awk
# Related

- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:

    #awk #script 
