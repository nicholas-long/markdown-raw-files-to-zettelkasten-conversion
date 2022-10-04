# python fix SSL errors using requests library ignore errors
```python
import requests
from requests.packages.urllib3.exceptions import InsecureRequestWarning
requests.packages.urllib3.disable_warnings(InsecureRequestWarning)
```

# Related

- [20221003150948](/zet/20221003150948/README.md) python fix SSL errors using requests library
- ~/kb/hacking/python/fix-ssl.md

Tags:

    #assorted #hacking #fix
