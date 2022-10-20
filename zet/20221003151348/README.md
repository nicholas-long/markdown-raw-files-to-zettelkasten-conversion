# awk bash scripting move files automatically

- programatically generate file names
- rename
- generate new file name from old name with awk strings
```bash
ls | awk '{ split($0,arr,"-"); system("mv " $0 " " arr[1] ".md") }'
```

` zet/20221003151348/README.md `

# Related

- [20221003151350](/zet/20221003151350/README.md) awk and bash scripting
- [20221014190117](/zet/20221014190117/README.md) kb file named kb/awk-scripting/bash-awk-quick-commands.md
- ~/kb/awk-scripting/bash-awk-quick-commands.md

Tags:

    #command #awk-scripting #bash 
