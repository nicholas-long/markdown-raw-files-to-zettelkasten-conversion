# kafkacat

- add data to topic
  - The option `-u` makes it unbuffered. If you do not do this, then it could keep data in a buffer indefinitely.
```bash
cat datafile | kafkacat -b $KAFKA -P -u -t topic_name
```

- get previous data in topic from epoch timestamp offset
  - kafkacat wants timestamps in ms, convert in bash.
```bash
d=$(date '+%s')
d=$(( d - 120 )) # 2 minutes ago
d=$(( d * 1000 )) # convert to ms
kafkacat -b kafka -C -t wifi-data-raw -e -o "s@$d"
```

` zet/20221003150210/README.md `

# Related

- [20221009014200](/zet/20221009014200/README.md) concept of a command
- [20221008212802](/zet/20221008212802/README.md) software program
- [20221014185522](/zet/20221014185522/README.md) kb file named kb/kafka/kafkacat.md
- [20221003150218](/zet/20221003150218/README.md) Connecting to confluent
- [20221012153643](/zet/20221012153643/README.md) kafka
- [20221012153342](/zet/20221012153342/README.md) event bus
- [20221012153512](/zet/20221012153512/README.md) database
- [20221012145054](/zet/20221012145054/README.md) things you can organize in personal life in private zettel notes
- [20221010074318](/zet/20221010074318/README.md) engineer the workflow, not the product
- ~/kb/kafka/kafkacat.md
- [20221006034046](/zet/20221006034046/README.md) kafka and zettelkasten graph docs
- [20221003150215](/zet/20221003150215/README.md) kafkacat install

Tags:

    #kafka #command #bash #scripting
