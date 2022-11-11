# python scripting read and process and urlencode every input line

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
` zet/20221003151355/README.md `

# Related

- [20221014190229](/zet/20221014190229/README.md) kb file named kb/auto-python.md
- [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
- [20221003151363](/zet/20221003151363/README.md) python scripts hub
- ~/kb/auto-python.md

Tags:

    #python #script 
