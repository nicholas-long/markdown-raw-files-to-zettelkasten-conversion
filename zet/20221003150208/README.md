# kafkacat add data to topic include keys
By providing CSV separator for key and values with `-K`

```bash
echo "$fileid:$filename" | kafkacat -b $KAFKA -P -t topic_name -u -K ':'
```
` zet/20221003150208/README.md `

# Related

- [20221014185522](/zet/20221014185522/README.md) kb file named kb/kafka/kafkacat.md
- [20221003150209](/zet/20221003150209/README.md) kafkacat add data to topic
- ~/kb/kafka/kafkacat.md

Tags:

    #kafka #command #bash
