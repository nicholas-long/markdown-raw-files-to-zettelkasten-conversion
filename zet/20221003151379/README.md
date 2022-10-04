# bash scripting mount host neo4j data into docker
~/kb/linux/runneo4j.sh
```bash
#!/bin/bash

# run neo4j in a docker

docker run --rm \
    -p7474:7474 -p7687:7687 \
    --env NEO4J_AUTH=neo4j/test \
    neo4j:latest

# mount host neo4j data into docker
##    -v $HOME/neo4j/data:/data \
##    -v $HOME/neo4j/logs:/logs \
##    -v $HOME/neo4j/import:/var/lib/neo4j/import \
##    -v $HOME/neo4j/plugins:/plugins \
```

~/kb/linux/runneo4j.sh
# References
- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted #bash #script
