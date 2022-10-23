# python pickle serialization magic bytes header signature `80 03` `80 04` `80 05` `(dp0` base64 `gASV` `gAWV`
python2 pickles start like `(dp0` and end with `.`
python2 pickles start with hex `80 03` and end with `.`
`\x80\x02`
>-1 byte 0x2e Python pickle data, protocol version 2
`\x80\x03`
>-1 byte 0x2e Python pickle data, protocol version 3
`\x80\x04\x95`
>-1 byte 0x2e Python pickle data, protocol version 4
`\x80\x05\x95`
>-1 byte 0x2e Python pickle data, protocol version 5

` zet/20221003150334/README.md `

# Related

- [20221013175957](/zet/20221013175957/README.md) serialization concept
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub

Tags:

    
