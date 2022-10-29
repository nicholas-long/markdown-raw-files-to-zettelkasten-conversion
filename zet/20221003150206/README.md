# example docker to initialize ksql commands initialize.sh

Add ksql statements to initialize in here.

```bash
#/bin/bash

KSQL_SERVER=$1
sleep 2
echo "This is where initializtion should happen."

./ksql.sh $KSQL_SERVER ksql "create or replace stream answers_raw (hash string, answer string) with (kafka_topic='answer', value_format='delimited', value_delimiter=':');"
```

` zet/20221003150206/README.md `

# Related

- [20221014185524](/zet/20221014185524/README.md) kb file named kb/kafka/ksql-initialize-example.md
- [20221009015558](/zet/20221009015558/README.md) docker
- [20221003150207](/zet/20221003150207/README.md) example docker to initialize ksql commands
- ~/kb/kafka/ksql-initialize-example.md

Tags:

    #kafka #ksql #bash #docker
