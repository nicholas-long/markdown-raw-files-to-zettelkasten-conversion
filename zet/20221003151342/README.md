# convert decimal to hex GMSA managed password
read decimal numbers one per line, print as hex encoded bytes.
```bash
cat managed_password | awk '{ printf("%.2x", $1) }'
```

# Related

- [20221003151343](/zet/20221003151343/README.md) convert decimal to hex
- ~/kb/awk-scripting/convert-decimal-to-hex.md

Tags:

    #awk-scripting #convert 
