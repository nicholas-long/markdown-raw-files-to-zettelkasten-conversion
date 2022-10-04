# Initialize topics in dockers
Add environment variable `KAFKA_CREATE_TOPICS`.
Format is `topic_name:partitions:replicas?`
```yaml
version: "3.8"
services:
  kafka:
    image: wurstmeister/kafka
    restart: always
    expose:
      - "9092:9092"
    ports:
      - "9092:9092"
    environment:
      DOCKER_API_VERSION: 1.22
      KAFKA_ADVERTISED_HOST_NAME: kafka
      KAFKA_ZOOKEEPER_CONNECT: zookeeper:2181
      KAFKA_CREATE_TOPICS: "md5_bloom:1:1,md5_query:1:1,sha1_bloom:1:1,sha1_query:1:1,answer:1:1,ingest_raw:1:1,files_raw:1:1"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock # TODO: can we get rid of this?
      - ./volumes/kafka:/kafka
```

# Related
- [20221003150216](/zet/20221003150216/README.md) Initialize topics in dockers Full example
- ~/kb/kafka/initialize-topics.md

Tags:
    #assorted #kafka #initialize
