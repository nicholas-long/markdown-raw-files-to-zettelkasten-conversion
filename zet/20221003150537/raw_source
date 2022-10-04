# immunity debugger mona commands

## list loaded modules and security flags
```
!mona modules
```

## search for opcode string jmp esp

### in exe
```
!mona jmp -r esp -cpb "<BAD_CHARS>"
```

### inside module
```
!mona find -s "\xFF\xE4" -m ModuleName.exe
!mona find -s "\xFF\xE4" -m ModuleName.dll
```

