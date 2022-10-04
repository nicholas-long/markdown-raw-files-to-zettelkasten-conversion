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

# References

Tags:
    #assorted
