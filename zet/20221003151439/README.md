# awk scripting base64 encode lines individually
~/kb/awk-scripting/base64-every-line.awk
```awk
#!/usr/bin/awk -f
# base64 encode lines individually
{
  printf("%s", $0) | "base64"
  close("base64")
}
```

~/kb/awk-scripting/base64-every-line.awk
# Related

- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:

    #awk #script 
