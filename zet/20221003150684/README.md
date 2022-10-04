# encode string as base64 url encoded
```bash
tr '/+' '_-' | tr -d '='
base64 | tr '/+' '_-' | tr -d '='
```

# Related

Tags:
    #assorted
