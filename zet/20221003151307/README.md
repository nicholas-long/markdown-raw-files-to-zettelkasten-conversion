# expect scripts use arguments
```expect
set username [lindex $argv 0];
set password [lindex $argv 1];
```
This sets env-like variables that can be printed
```expect
send "$password"
```

# Related

- [20221003151309](/zet/20221003151309/README.md) expect scripts
- ~/kb/bash-scripting/expect.md

Tags:

    #assorted #bash-scripting #expect
