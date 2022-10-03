## initialize variable with default value if empty and return it
```bash
echo ${name:="default"}
```

### example
```
$ echo ${name:="default"}
default
$ name=coyote
$ echo ${name:="default"}
coyote
```

