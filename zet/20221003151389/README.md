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
` zet/20221003151389/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221006200018](/zet/20221006200018/README.md) OCR youtube video frames
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
