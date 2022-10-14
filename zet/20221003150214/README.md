# kafkacat install alias for kcat
Use `-it` for interactive tty, or `-i` to pipe stuff.
If it complains about kafka's hostname, then you can use `--add-host kafka:127.0.0.1`
```bash
docker run --network host --rm -it edenhill/kcat:1.7.0 -b kafka:9092

alias kcat="docker run --network host --rm -i edenhill/kcat:1.7.0 -b kafka:9092"
```

` zet/20221003150214/README.md `

# Related

- [20221014185519](/zet/20221014185519/README.md) kb file named kb/kafka/quick-and-dirty-kafkacat.md
- [20221013194055](/zet/20221013194055/README.md) concept of installing something
- [20221003151274](/zet/20221003151274/README.md) install mandown
- [20221003150215](/zet/20221003150215/README.md) kafkacat install
- ~/kb/kafka/quick-and-dirty-kafkacat.md

Tags:

    #kafka #quick 
