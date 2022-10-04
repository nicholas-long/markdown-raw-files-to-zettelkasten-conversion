## extract PDF embedded file stream for use with PDF file attach exploits like mpdf
## prepend gzip magic bytes
## extract zlib stream between PDF stream and endstream with quick and dirty awk
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
