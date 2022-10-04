# example docker to initialize ksql commands initialize.sh

Add ksql statements to initialize in here.

```bash
#/bin/bash

KSQL_SERVER=$1
sleep 2
echo "This is where initializtion should happen."

./ksql.sh $KSQL_SERVER ksql "create or replace stream answers_raw (hash string, answer string) with (kafka_topic='answer', value_format='delimited', value_delimiter=':');"
```

# References
- [20221003150207](/zet/20221003150207/README.md) example docker to initialize ksql commands
- ~/kb/kafka/ksql-initialize-example.md

Tags:
    #assorted #kafka #ksql
