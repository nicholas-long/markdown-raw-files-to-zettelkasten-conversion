# python scripting fuzz valid dates
~/kb/hacking/tricks/python-fuzz-valid-dates.py
```python
from datetime import datetime, timedelta
# fuzz valid dates
dates = [(datetime.today() - timedelta(days=x)).strftime('%Y-%m-%d') for x in range(0, 365)]
for d in dates:
    print(d)
```

~/kb/hacking/tricks/python-fuzz-valid-dates.py
` zet/20221003151353/README.md `

# Related

- [20221014190229](/zet/20221014190229/README.md) kb file named kb/auto-python.md
- [20221003151363](/zet/20221003151363/README.md) python scripts hub
- ~/kb/auto-python.md

Tags:

    #python #script 
