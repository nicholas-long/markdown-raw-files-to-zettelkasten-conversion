# awk scripting print all variations of upper and lower case for given lowercase string
~/kb/awk-scripting/toggle-case-combinatoric.awk
```awk
#!/usr/bin/awk -f
# print all variations of upper and lower case for given lowercase string
function toggle_rec(str, arr, pos) {
  if (pos > length($0)) { # recursion base case - end of char array
    printf("%s\n", str)
    return
  } else {
    toggle_rec(str arr[pos], arr, pos + 1) # always proceed with original string
    if (arr[pos] ~ /[a-z]/) # only switch case on alphabets
      toggle_rec(str toupper(arr[pos]), arr, pos + 1)
  }
}
{
  split($0, chars, "")
  toggle_rec("", chars, 0)
}
```

~/kb/awk-scripting/toggle-case-combinatoric.awk
# Related

- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:

    #awk #script 
