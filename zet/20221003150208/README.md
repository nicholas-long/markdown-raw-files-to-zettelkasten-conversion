# kafkacat add data to topic include keys
By providing CSV separator for key and values with `-K`

```bash
echo "$fileid:$filename" | kafkacat -b $KAFKA -P -t topic_name -u -K ':'
```
` zet/20221003150208/README.md `

# Related

- [20221014185522](/zet/20221014185522/README.md) kb file named kb/kafka/kafkacat.md
- ~/kb/kafka/kafkacat.md

Tags:

    #kafka #command #bash
