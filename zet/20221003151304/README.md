# bash scripting set operations comm find common lines between two files
input files must be sorted.
Explanation:
- suppress 1 ( lines unique to signups.txt )
- suppress 2 ( lines unique to purchases.txt )
```bash
comm -12 signups.txt purchases.txt
comm -12 <(sort signups.txt) <(sort purchases.txt)
```

# References
- [20221003151305](/zet/20221003151305/README.md) bash scripting set operations comm
- ~/kb/bash-scripting/find-common-lines-set-operations.md

Tags:
    #assorted
