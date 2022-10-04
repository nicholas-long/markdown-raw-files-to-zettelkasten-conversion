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
# References

Tags:
    #assorted
