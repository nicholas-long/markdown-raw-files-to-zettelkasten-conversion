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
# Related

- [20221003151363](/zet/20221003151363/README.md) python scripting
- ~/kb/auto-python.md

Tags:

    #assorted #python #script
