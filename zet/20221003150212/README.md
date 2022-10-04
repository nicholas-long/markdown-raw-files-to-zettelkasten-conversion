# kafkacat install quick and dirty shell script using docker
```bash
#!/bin/bash

docker run --network host --rm -i edenhill/kcat:1.7.0 -b kafka:9092 $@
```
# Related
- [20221003150215](/zet/20221003150215/README.md) kafkacat install
- ~/kb/kafka/quick-and-dirty-kafkacat.md

Tags:
    #assorted #kafka #quick
