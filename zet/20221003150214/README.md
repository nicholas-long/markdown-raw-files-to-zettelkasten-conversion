# kafkacat install alias for kcat
Use `-it` for interactive tty, or `-i` to pipe stuff.
If it complains about kafka's hostname, then you can use `--add-host kafka:127.0.0.1`
```bash
docker run --network host --rm -it edenhill/kcat:1.7.0 -b kafka:9092

alias kcat="docker run --network host --rm -i edenhill/kcat:1.7.0 -b kafka:9092"
```

# References
- [20221003150215](/zet/20221003150215/) kafkacat install
- ~/kb/kafka/quick-and-dirty-kafkacat.md

Tags:
    #assorted

