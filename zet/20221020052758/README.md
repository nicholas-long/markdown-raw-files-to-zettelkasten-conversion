# neo4j cypher queries

- concept of `neo4j cypher queries`

- create nodes
```
CREATE (n:Person:Swedish)
CREATE (n:Person {name: 'Andy', title: 'Developer'})
```

- create relations
```
MATCH
  (a:Person),
  (b:Person)
WHERE a.name = 'A' AND b.name = 'B'
CREATE (a)-[r:RELTYPE]->(b)
RETURN type(r)
```

` zet/20221020052758/README.md `

# Related

- [20221008054623](/zet/20221008054623/README.md) neo4j

Tags:

    #idea
