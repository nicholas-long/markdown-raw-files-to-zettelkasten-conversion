# simple binary exploits python exploit scripts all bad characters
```python
knownBadChars = b"\x00\x0a\x0d"
allBadChars = bytes( [r for r in range(256) if r not in knownBadChars])
```

` zet/20221003150541/README.md `

# Related

- [20221014190002](/zet/20221014190002/README.md) kb file named kb/hacking/pwn/basic-win-pwn.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- ~/kb/hacking/pwn/basic-win-pwn.md

Tags:

    #hacking #pwn #basic 
