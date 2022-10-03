### use sed to process / execute multiple expressions statements
```bash
locate 2john | sed -e 's/.*\///g' -e 's/\..*//g' -e 's/2john//g'
locate 2john | sed -e 's/.*\///g' -e 's/\..*//g'
```
