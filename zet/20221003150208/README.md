# kafkacat add data to topic include keys
By providing CSV separator for key and values with `-K`

```bash
echo "$fileid:$filename" | kafkacat -b $KAFKA -P -t topic_name -u -K ':'
```
# References
- [20221003150209](/zet/20221003150209/) kafkacat add data to topic
- ~/kb/kafka/kafkacat.md

Tags:
    #assorted

