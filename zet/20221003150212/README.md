# kafkacat install quick and dirty shell script using docker
```bash
#!/bin/bash

docker run --network host --rm -i edenhill/kcat:1.7.0 -b kafka:9092 $@
```
` zet/20221003150212/README.md `

# Related

- [20221014185519](/zet/20221014185519/README.md) kb file named kb/kafka/quick-and-dirty-kafkacat.md
- [20221013194055](/zet/20221013194055/README.md) concept of installing something
- [20221003150215](/zet/20221003150215/README.md) kafkacat install
- ~/kb/kafka/quick-and-dirty-kafkacat.md

Tags:

    #DEL #kafka #quick 
