# awk scripting filter the CVE list for potentially valid, relevant vulnerabilities
~/kb/hacking/cve/relevant.awk
```awk
#!/usr/bin/awk -f
# filter the CVE list for potentially valid, relevant vulnerabilities
BEGIN { OFS = FS = "\t" }
$3 ~ /^\*\* RESERVED/ { next }
$3 ~ /^\*\* REJECT/ { next }
#$3 ~ /^\*\* DISPUTED/ { next }
{ print }
```

~/kb/hacking/cve/relevant.awk
` zet/20221003151432/README.md `

# Related

- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas

- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:

    #awk #script 
