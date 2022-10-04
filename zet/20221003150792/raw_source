### plaintext with grep
use awk to print only unique lines
```bash
grep -Eo '\w+' $FILE
grep -Eo '\w+' $FILE | awk '!(seen[$0]++)'
```
