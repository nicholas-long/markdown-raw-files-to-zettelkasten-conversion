# simple binary exploits python exploit scripts all bad characters
```python
knownBadChars = b"\x00\x0a\x0d"
allBadChars = bytes( [r for r in range(256) if r not in knownBadChars])
```

# References
- [20221003150543](/zet/20221003150543/README.md) simple binary exploits python exploit scripts
- ~/kb/hacking/pwn/basic-win-pwn.md

Tags:
    #assorted #hacking #pwn #basic
