### upload file
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

