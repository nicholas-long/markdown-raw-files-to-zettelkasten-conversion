# bash scripting set operations comm find common lines between two files
input files must be sorted.
Explanation:
- suppress 1 ( lines unique to signups.txt )
- suppress 2 ( lines unique to purchases.txt )
```bash
comm -12 signups.txt purchases.txt
comm -12 <(sort signups.txt) <(sort purchases.txt)
```

` zet/20221003151304/README.md `

# Related

- [20221014190253](/zet/20221014190253/README.md) kb file named kb/bash-scripting/find-common-lines-set-operations.md
- [20221003151305](/zet/20221003151305/README.md) bash scripting comm utility for set operations
- ~/kb/bash-scripting/find-common-lines-set-operations.md
- [20221003151306](/zet/20221003151306/README.md) bash scripting set operations

Tags:

    #bash-scripting #find 
