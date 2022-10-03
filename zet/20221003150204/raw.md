## entry.sh

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

