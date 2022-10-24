# bash scripting set operations comm find lines unique to one file and not in another
input lines must be sorted.
Explanation:
- suppress 2 ( lines unique to purchases )
- suppress 3 ( lines common to both )
```bash
# display lines in signups that do not occur in purchases
comm -23 signups.txt purchases.txt
comm -23 <(sort signups.txt) <(sort purchases.txt)
```

` zet/20221003151303/README.md `

# Related

- [20221014190253](/zet/20221014190253/README.md) kb file named kb/bash-scripting/find-common-lines-set-operations.md
- [20221003151305](/zet/20221003151305/README.md) bash scripting comm utility for set operations
- ~/kb/bash-scripting/find-common-lines-set-operations.md
- [20221003151306](/zet/20221003151306/README.md) bash scripting set operations

Tags:

    #bash-scripting #find 
