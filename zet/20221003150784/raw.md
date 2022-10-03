## Scan Host
```bash
enum4linux $IP
```

### Suppress Errors
```bash
enum4linux $IP | grep -Ev '^(Use of)' > enum4linux.out 
```

