## python exploit scripts

### import pwntools
```python
from pwn import *
```

### all bad characters
```python
knownBadChars = b"\x00\x0a\x0d"
allBadChars = bytes( [r for r in range(256) if r not in knownBadChars])
```

### pwntools flat pack buffer offsets
example at offset 500 in buffer
```python
payload = flat({
    500: JMP_ESP,
    504: buf
})
```

