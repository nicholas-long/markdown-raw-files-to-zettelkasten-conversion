# python scripting parse a cookie from every line on standard input
~/kb/python/decode-cookies.py
```python
#!/usr/bin/python3

# parse a cookie from every line on standard input

from urllib.parse import unquote
params = {}
import fileinput
for rawline in fileinput.input():
    line = rawline.rstrip("\n")
    elems = line.split('=')
    k = elems[0]
    v = elems[1]
    params[k] = unquote(v)
print(repr(params))
```

~/kb/python/decode-cookies.py
` zet/20221003151358/README.md `

# Related

- [20221014190229](/zet/20221014190229/README.md) kb file named kb/auto-python.md
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003151363](/zet/20221003151363/README.md) python scripts hub
- ~/kb/auto-python.md

Tags:

    #python #script 
