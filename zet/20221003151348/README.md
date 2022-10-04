# awk and bash scripting rename or move files automatically programatically generate file names
generate new file name from old name with awk strings
```bash
ls | awk '{ split($0,arr,"-"); system("mv " $0 " " arr[1] ".md") }'
```

# References
- [20221003151349](/zet/20221003151349/README.md) awk and bash scripting rename or move files
- ~/kb/awk-scripting/bash-awk-quick-commands.md

Tags:
    #assorted #command #awk-scripting #bash
