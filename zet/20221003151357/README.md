# python scripting parse all get parameters from a url
~/kb/python/get-url-params.py
```python
#!/usr/bin/python3

# parse all get parameters from a url

from urllib.parse import unquote
params = {}
s = input()
urlelems = s.split('?')
if len(urlelems) > 1:
    s = urlelems[1]
    for p in s.split('&'):
        elems = p.split('=')
        k = elems[0]
        if len(elems) > 1:
            v = elems[1]
            params[k] = unquote(v)
        else:
            params[k] = ''
print(repr(params))
```

~/kb/python/get-url-params.py
# Related

- [20221003151363](/zet/20221003151363/README.md) python scripting
- ~/kb/auto-python.md

Tags:

    #assorted #python #script
