# convert decimal to hex GMSA managed password

- read decimal numbers one per line, print as hex encoded bytes.
```bash
cat managed_password | awk '{ printf("%.2x", $1) }'
```

` zet/20221003151342/README.md `

# Related

- [20221003151354](/zet/20221003151354/README.md) python scripting convert a GMSA managed password structure to a NTLM hash
- [20221003151134](/zet/20221003151134/README.md) active directory Group Managed Service Account
- [20221003150486](/zet/20221003150486/README.md) active directory get GMSA service account properties
- [20221014190119](/zet/20221014190119/README.md) kb file named kb/awk-scripting/convert-decimal-to-hex.md
- [20221003151343](/zet/20221003151343/README.md) convert decimal to hex
- ~/kb/awk-scripting/convert-decimal-to-hex.md

Tags:

    #convert #awk #scripting
