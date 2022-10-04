# python scripting convert CSV to TSV
~/kb/python/convert-csv-to-tsv.py
```python
#!/usr/bin/python3
# convert CSV to TSV
import csv, sys
csv.writer(sys.stdout, dialect='excel-tab').writerows(csv.reader(sys.stdin))
```

~/kb/python/convert-csv-to-tsv.py
# Related

- [20221003151363](/zet/20221003151363/README.md) python scripting
- ~/kb/auto-python.md

Tags:

    #assorted #python #script
