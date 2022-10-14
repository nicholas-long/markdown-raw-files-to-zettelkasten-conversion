# python fix SSL errors using requests library ignore errors
```python
import requests
from requests.packages.urllib3.exceptions import InsecureRequestWarning
requests.packages.urllib3.disable_warnings(InsecureRequestWarning)
```

` zet/20221003150947/README.md `

# Related

- [20221014185751](/zet/20221014185751/README.md) kb file named kb/hacking/python/fix-ssl.md
- [20221003150948](/zet/20221003150948/README.md) python fix SSL errors using requests library
- ~/kb/hacking/python/fix-ssl.md

Tags:

    #hacking #fix 
