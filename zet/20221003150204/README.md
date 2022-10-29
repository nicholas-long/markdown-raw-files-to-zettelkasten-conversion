# example docker to initialize ksql commands entry.sh

Configure `$KSQLDB` to point to ksqldb server API.
TODO: figure out authentication

```bash
#!/bin/bash

KSQLDB=172.17.0.1:8088

ls .init 2>/dev/null
if [ $? != 0 ]; then
  while [ 1 ]; do
    curl $KSQLDB
    if [ $? == 0 ]; then
      echo "Beginning initialization..."
      ./initialize.sh $KSQLDB
      result=$?
      echo "Finished initialization. $result"
      touch .init
      exit $result
    fi
    sleep 5
  done
fi
```

` zet/20221003150204/README.md `

# Related

- [20221014185524](/zet/20221014185524/README.md) kb file named kb/kafka/ksql-initialize-example.md
- [20221009015558](/zet/20221009015558/README.md) docker
- [20221003150207](/zet/20221003150207/README.md) example docker to initialize ksql commands
- ~/kb/kafka/ksql-initialize-example.md

Tags:

    #kafka #ksql #bash #docker
