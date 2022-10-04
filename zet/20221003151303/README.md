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

# Related

- [20221003151305](/zet/20221003151305/README.md) bash scripting set operations comm
- ~/kb/bash-scripting/find-common-lines-set-operations.md

Tags:

    #assorted #bash-scripting #find
