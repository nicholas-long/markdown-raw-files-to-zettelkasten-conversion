## initialize.sh

Add ksql statements to initialize in here.

```bash
#/bin/bash

KSQL_SERVER=$1
sleep 2
echo "This is where initializtion should happen."

./ksql.sh $KSQL_SERVER ksql "create or replace stream answers_raw (hash string, answer string) with (kafka_topic='answer', value_format='delimited', value_delimiter=':');"
```

