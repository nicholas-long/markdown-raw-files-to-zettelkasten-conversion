## ksql.sh

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

