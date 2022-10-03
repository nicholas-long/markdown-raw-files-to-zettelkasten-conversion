# convert epoch to human readable bash
```bash
date --date='@2147483647'
```

## signed 32 bit word Y2K
```bash
date --date="@$(( 2 ** 31 ))"
Tue Jan 19 03:14:08 UTC 2038
```

