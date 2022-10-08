# bash scripting download the current CVE list get as Tab Separated Values
~/kb/hacking/cve/get-tsv.sh
```bash
#!/bin/bash

# download the current CVE list get as Tab Separated Values

zcat <( curl https://cve.mitre.org/data/downloads/allitems.csv.gz ) | \
  sed 's/\t/  /g' | \
  ~/kb/python/convert-csv-to-tsv.py | \
  awk ' # fix quote issues
    BEGIN { OFS = FS = "\t" }
    {
      for (n = 1; n <= NF; n++) {
        if ($n ~ /^ *".*" *$/) {
          gsub(/^ *"/,"",$n)
          gsub(/" *$/,"",$n)
          gsub(/""/,"\"",$n)
        }
      }
    }
    { print } '
```

~/kb/hacking/cve/get-tsv.sh
` zet/20221003151406/README.md `

# Related

- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
