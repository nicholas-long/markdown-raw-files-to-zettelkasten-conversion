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

- 20221012153512

- 20221003151278

- 20221003151277

- 20221003151276

- 20221009014200

- 20221003150210


Tags:

    
