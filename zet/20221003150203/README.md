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
` zet/20221003150203/README.md `

# Related

- [20221014185524](/zet/20221014185524/README.md) kb file named kb/kafka/ksql-initialize-example.md
- [20221009015558](/zet/20221009015558/README.md) docker
- [20221003150207](/zet/20221003150207/README.md) example docker to initialize ksql commands
- ~/kb/kafka/ksql-initialize-example.md
- [20221009015743](/zet/20221009015743/README.md) dockerfile

Tags:

    #kafka #ksql #bash #docker #file #script
