## find files modified between specific dates (with reference files)
```bash
touch --date "2007-01-01" /tmp/start
touch --date "2008-01-01" /tmp/end
find /data/images -type f -newer /tmp/start -not -newer /tmp/end 2>/dev/null
```

