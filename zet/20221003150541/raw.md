### all bad characters
```python
knownBadChars = b"\x00\x0a\x0d"
allBadChars = bytes( [r for r in range(256) if r not in knownBadChars])
```

