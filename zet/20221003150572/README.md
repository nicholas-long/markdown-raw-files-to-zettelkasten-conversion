# php type juggling string and number exponent type confusion vulnerable hash prefix `0e` md5 sha1
`0e`
specific password payloads that generate md5 hashes are in payloadsallthethings "Type Juggling"
```bash
$ echo -n 240610708 | md5sum
0e462097431906509019562988736854  -
$ echo -n QNKCDZO | md5sum
0e830400451993494058024219903391  -
$ echo -n aabg7XSs | md5sum
0e087386482136013740957780965295  -
```

` zet/20221003150572/README.md `

# Related

- [20221014185958](/zet/20221014185958/README.md) kb file named kb/hacking/php/type-juggling.md
- [20221003150573](/zet/20221003150573/README.md) php type juggling string and number exponent type confusion
- ~/kb/hacking/php/type-juggling.md

Tags:

    #hacking #type 
