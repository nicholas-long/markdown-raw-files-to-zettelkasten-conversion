# example docker to initialize ksql commands Dockerfile

```Dockerfile
FROM kalilinux/kali-rolling

WORKDIR /work

# iproute2 = ip
# net-tools = ifconfig
RUN apt update && apt install -y kafkacat socat net-tools iproute2 git curl python3 python3-pip

COPY entry.sh .
COPY initialize.sh .
COPY ksql.sh .
RUN ls -al

ENTRYPOINT /work/entry.sh
```
# References
- [20221003150207](/zet/20221003150207/) example docker to initialize ksql commands
- ~/kb/kafka/ksql-initialize-example.md

Tags:
    #assorted

