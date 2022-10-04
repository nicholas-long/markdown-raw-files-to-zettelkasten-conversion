# python scripting read and process lines of input
~/kb/python/urlencode.py
```python
#!/usr/bin/python3
from urllib.parse import quote

# urlencode every input line

# read and process lines of input
import fileinput
for rawline in fileinput.input():
    line = rawline.rstrip("\n")
    print(quote(line))
```

~/kb/python/urlencode.py
# Related
- [20221003151363](/zet/20221003151363/README.md) python scripting
- ~/kb/auto-python.md

Tags:
    #assorted #python #script
