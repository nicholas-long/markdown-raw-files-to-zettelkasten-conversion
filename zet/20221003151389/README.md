# bash scripting copy and read text from PNG image URL arg print with tesseract OCR
~/kb/bash-scripting/copy-text-from-image-url.sh
```bash
#!/bin/bash
# copy and read text from PNG image URL arg print with tesseract OCR

tf=$(mktemp -d)
cd $tf
wget $1
filename=$(ls)
tesseract "$filename" output
ls
cat output.txt
cd - >/dev/null
rm -rf $tf
```

~/kb/bash-scripting/copy-text-from-image-url.sh
# Related

- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:

    #bash #script 
