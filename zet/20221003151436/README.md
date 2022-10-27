# awk scripting print all variations of spaces between tokens
~/kb/awk-scripting/space-invader.awk
```awk
#!/usr/bin/awk -f
# print all variations of spaces between tokens
function expand_rec(str, pos) {
  if (pos > NF) { # recursion base case - end of char array
    printf("%s\n", str "")
    return
  } else {
    expand_rec(str " " $pos, pos + 1)
    expand_rec(str "  " $pos, pos + 1)
    expand_rec(str "   " $pos, pos + 1)
    expand_rec(str "    " $pos, pos + 1)
  }
}
{
  expand_rec("", 1)
}
```

~/kb/awk-scripting/space-invader.awk
` zet/20221003151436/README.md `

# Related

- [20221014185509](/zet/20221014185509/README.md) kb file named kb/auto-awk.md
- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md
- [20221003151399](/zet/20221003151399/README.md) bash scripting find alphanumeric base64 using awk script

Tags:

    #awk #script 
