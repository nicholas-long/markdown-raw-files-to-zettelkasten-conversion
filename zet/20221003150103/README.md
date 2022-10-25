# python scripting requests http upload file
```
import requests
import sys

ip = sys.argv[1]
print("attacking " + ip)
url = f"http://{ip}/api/example"

files = {'file': ('filename_remote.txt', open('filename_local.txt','rb'), 'text/x-spam')}
r = requests.post(url, files=files)
print(r.text)
```

` zet/20221003150103/README.md `

# Related

- [20221014185507](/zet/20221014185507/README.md) kb file named kb/python/coding-reference.md
- [20221003150315](/zet/20221003150315/README.md) python uvicorn `--reload` flag
- [20221003150104](/zet/20221003150104/README.md) python scripting http
- ~/kb/python/coding-reference.md
- [20221025184026](/zet/20221025184026/README.md) python requests library for http

Tags:

    #python #coding 
