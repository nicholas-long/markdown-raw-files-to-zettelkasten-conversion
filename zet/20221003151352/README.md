# python scripting convert tsv with key and value fields to python dictionary
~/kb/python/tsv-to-python-dict.py
```python
#!/usr/bin/python3

# convert tsv with key and value fields to python dictionary

from urllib.parse import unquote
params = {}
import fileinput
for rawline in fileinput.input():
    line = rawline.rstrip("\n")
    elems = line.split('\t')
    k = elems[0]
    v = elems[1]
    params[k] = v
print(repr(params))
```

~/kb/python/tsv-to-python-dict.py
` zet/20221003151352/README.md `

# Related

- [20221014190229](/zet/20221014190229/README.md) kb file named kb/auto-python.md
- [20221003151363](/zet/20221003151363/README.md) python scripts hub
- ~/kb/auto-python.md

Tags:

    #python #script 
