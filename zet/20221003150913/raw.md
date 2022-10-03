## find files modified between specific dates
```bash
find / -type f -newermt "2022-02-20" -not -newermt "2022-02-28" 2>/dev/null
```

