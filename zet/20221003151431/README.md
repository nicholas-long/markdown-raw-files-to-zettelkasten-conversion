# awk scripting check output of grep and next line using awk "grep -A 1 -R '^# ' ."
~/kb/awk-scripting/file-grep-multi-lines.awk
```awk
#!/usr/bin/awk -f
# check output of grep and next line using awk "grep -A 1 -R '^# ' ."
$0 == "--" {
  nextline=1
  lastpart=NR
}
NR == lastpart + 1 {
  header=$0
}
NR == lastpart + 2 && $0 ~ /-$/ {
  print header, $0
}
```

~/kb/awk-scripting/file-grep-multi-lines.awk
` zet/20221003151431/README.md `

# Related

- [20221003151299](/zet/20221003151299/README.md) bash tricks
- [20221003151443](/zet/20221003151443/README.md) kb
- [20221003151338](/zet/20221003151338/README.md) awk scripting

Tags:

    #command
