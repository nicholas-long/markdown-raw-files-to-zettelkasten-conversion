# kafkacat add data to topic
The option `-u` makes it unbuffered.
If you do not do this, then it could keep data in a buffer indefinitely.
```bash
cat datafile | kafkacat -b $KAFKA -P -u -t topic_name
```

# Related

- [20221003150210](/zet/20221003150210/README.md) kafkacat
- [20221003150208](/zet/20221003150208/README.md) kafkacat add data to topic include keys
- ~/kb/kafka/kafkacat.md

Tags:

    #assorted #kafka #kafkacat
