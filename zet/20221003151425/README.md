# awk scripting get HTTP POST content from HTTP request stream
~/kb/awk-scripting/get-http-post-content.awk
```awk
#!/usr/bin/awk -f
# get HTTP POST content from HTTP request stream
#@pre: contains no CRLF
BEGIN { content=0 }
content { print }
/^$/ { content=1 }
```

~/kb/awk-scripting/get-http-post-content.awk
# References
- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:
    #assorted #awk #script
