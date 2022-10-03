## quick and dirty shell script using docker
```bash
#!/bin/bash

docker run --network host --rm -i edenhill/kcat:1.7.0 -b kafka:9092 $@
```
