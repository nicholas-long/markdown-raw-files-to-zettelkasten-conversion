# example docker to initialize ksql commands ksql.sh

```bash
#!/bin/bash

KSQL_SERVER=$1
sqltype=$2
statement=$3

curl -X "POST" "http://$KSQL_SERVER/$sqltype" \
     -H "Content-Type: application/json; charset=utf-8" \
     -d "{
     \"ksql\": 
       \" $statement \"
}"
echo
```

` zet/20221003150205/README.md `

# Related

- [20221009015558](/zet/20221009015558/README.md) docker
- [20221003150207](/zet/20221003150207/README.md) example docker to initialize ksql commands
- ~/kb/kafka/ksql-initialize-example.md

Tags:

    #kafka #ksql 
