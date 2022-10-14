# python scripting parse all post params from post content given on standard input
~/kb/python/decode-post-params.py
```python
#!/usr/bin/python3

# parse all post params from post content given on standard input

from urllib.parse import unquote
params = {}
s = input()
for p in s.split('&'):
    elems = p.split('=')
    k = elems[0]
    v = elems[1]
    params[k] = unquote(v)
print(repr(params))
```

~/kb/python/decode-post-params.py
` zet/20221003151351/README.md `

# Related

- [20221014190229](/zet/20221014190229/README.md) kb file named kb/auto-python.md
- [20221003151363](/zet/20221003151363/README.md) python scripting
- ~/kb/auto-python.md

Tags:

    #python #script 
