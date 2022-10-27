# bash scripting extract zlib stream between PDF stream and endstream with quick and dirty awk
~/kb/hacking/tricks/extract-pdf-embedded-file-stream.sh
```bash
#!/bin/bash

# extract PDF embedded file stream for use with PDF file attach exploits like mpdf

TF=$(mktemp)

# prepend gzip magic bytes
printf "\x1f\x8b\x08\x00\x00\x00\x00\x00" > $TF

# extract zlib stream between PDF stream and endstream with quick and dirty awk
cat $1 | awk -v streamindex=$2 '
/endstream/ { pr = 0 }
i == streamindex && pr { print }
/^stream/ { pr = 1; i++ }
' >> $TF

cat $TF | gzip -d 2>/dev/null
```

~/kb/hacking/tricks/extract-pdf-embedded-file-stream.sh
` zet/20221003151401/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md
- [20221003151402](/zet/20221003151402/README.md) bash scripting prepend gzip magic bytes
- [20221003151403](/zet/20221003151403/README.md) bash scripting extract PDF embedded file stream for use with PDF file attach exploits like mpdf

Tags:

    #bash #script 
