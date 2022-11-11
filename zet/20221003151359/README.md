# python scripting convert CSV to TSV
~/kb/python/convert-csv-to-tsv.py
```python
#!/usr/bin/python3
# convert CSV to TSV
import csv, sys
csv.writer(sys.stdout, dialect='excel-tab').writerows(csv.reader(sys.stdin))
```

~/kb/python/convert-csv-to-tsv.py
` zet/20221003151359/README.md `

# Related

- [20221014190229](/zet/20221014190229/README.md) kb file named kb/auto-python.md
- [20221003151363](/zet/20221003151363/README.md) python scripts hub
- ~/kb/auto-python.md

Tags:

    #python #script 
