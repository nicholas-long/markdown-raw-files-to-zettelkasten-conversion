# make a script to get the context of a card - word counts

- concept of `make a script to get the context of a card - word counts`
- working version with scores of linked cards is stored at `zet/20221018201513/contextscript`

```

id=20221018201513
echo $id | awk '
function refs(id, level) {
  print level, id
  if (!seen[id] && level < 2) {
    seen[id] = 1
    command = "./zc refs " id
    while ((command | getline nextid) > 0) {
      refs(nextid, level + 1)
    }
    close(command)
  }
}
{
  id = $0
  refs(id,0)
}
'

mv contextscript zet/20221018201513/
```

` zet/20221018201513/README.md `

# Related

- [20221008042814](/zet/20221008042814/README.md) WIP

- [20221003151350](/zet/20221003151350/README.md) awk and bash scripting

- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #idea
