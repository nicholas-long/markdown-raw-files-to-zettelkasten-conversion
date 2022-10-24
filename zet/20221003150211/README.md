# kafkacat get previous data in topic from epoch timestamp offset
kafkacat wants timestamps in ms, convert in bash.
```bash
d=$(date '+%s')
d=$(( d - 120 )) # 2 minutes ago
d=$(( d * 1000 )) # convert to ms
kafkacat -b kafka -C -t wifi-data-raw -e -o "s@$d"
```

` zet/20221003150211/README.md `

# Related

- [20221014185521](/zet/20221014185521/README.md) kb file named kb/kafka/kafkacat-get-data-by-time.md
- [20221012153512](/zet/20221012153512/README.md) database
- [20221003151278](/zet/20221003151278/README.md) linux data science and data engineering pipelines hub
- [20221003151277](/zet/20221003151277/README.md) linux data science utilities
- [20221003151276](/zet/20221003151276/README.md) linux data science issues
- [20221009014200](/zet/20221009014200/README.md) concept of a command
- [20221003150210](/zet/20221003150210/README.md) kafkacat

Tags:

    
