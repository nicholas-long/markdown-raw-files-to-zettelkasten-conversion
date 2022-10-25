# enumerate tags

- concept of `enumerate tags`

```
awk '
{ last = $0 }
ENDFILE {
  gsub(/^ */,"",last)
  gsub(/ *$/,"",last)
  print last
  split(last,arr," ")
  for (n=0;n<=length(arr);n++) {
    if (arr[n] ~ /^#[^ ]/) {
      print arr[n]
    }
  }
} ' zet/20221025024238/README.md

```

` zet/20221025024238/README.md `

# Related

- [20221013021614](/zet/20221013021614/README.md) terminal graph browser
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221025025810](/zet/20221025025810/README.md) useful zet scripts
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub

Tags:

    #bash #sed