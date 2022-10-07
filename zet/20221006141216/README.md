# weird issue with enrich

- could be related to directories that are for deleted zettels that are not removed by git
    - when i am testing stuff and deleting bad zettels, but the id remains, it could keep showing up in lists

command output

```
└─$ ./zetcmd enrich
enrich
cat: README.md: No such file or directory
awk: fatal: cannot open file `README.md' for reading: No such file or directory
cat: README.md: No such file or directory
awk: fatal: cannot open file `README.md' for reading: No such file or directory
cat: README.md: No such file or directory
awk: fatal: cannot open file `README.md' for reading: No such file or directory
cat: README.md: No such file or directory
awk: fatal: cannot open file `README.md' for reading: No such file or directory
```

` zet/20221006141216/README.md `

# Related

- [20221007051119](/zet/20221007051119/README.md) zet cmd enrich process

- [20221006032933](/zet/20221006032933/README.md) problems / issues with zet cmd
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #todo 
