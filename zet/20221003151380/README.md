# bash scripting run neo4j in a docker

~/kb/linux/runneo4j.sh
```bash
#!/bin/bash

# run neo4j in a docker

docker run --rm \
    -p7474:7474 -p7687:7687 \
    --env NEO4J_AUTH=neo4j/test \
    neo4j:latest
```

` zet/20221003151380/README.md `

# Related

- [20221003151379](/zet/20221003151379/README.md) bash scripting mount host neo4j data into docker
- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221010142810](/zet/20221010142810/README.md) what is the right and secure way to develop with docker
- [20221009015558](/zet/20221009015558/README.md) docker
- [20221008054623](/zet/20221008054623/README.md) neo4j
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script #trick #container #docker #graph #database #program
