# splitting comma separated list into filenames safely in scripting with bash, awk, and sed

```sh
echo "a|;'-#,b,c" | sed -e 's/[<>\|&#;"'\'']//g' -e 's/,/\n/g'| awk '{print "tagindex/" $0 ".md"}'
```

` zet/20221028023010/README.md `

# Related

- [20221028021608](/zet/20221028021608/README.md) optimizations for graph queries
- [20221014081712](/zet/20221014081712/README.md) ways to get hacked
- [20221003151299](/zet/20221003151299/README.md) bash tricks
- [20221003151338](/zet/20221003151338/README.md) awk scripting
- [20221006010531](/zet/20221006010531/README.md) sed scripts
- [20221013221136](/zet/20221013221136/README.md) graph query language for zettelkasten

Tags:

    #bash #awk #sed #scripting #file #arg #convert #defense #trick #command
