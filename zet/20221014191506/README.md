# associate kb cards with converted cards

- concept of `associate kb cards with converted cards`
- use saved node IDs in file `zet/20221014183030/kbnodes`
- save references in zet/20221014191506/kbnodereferences

```

awk '
{
  print "id", $1
  print "begin"
  system("grep -R \047^- ./" $2 "\047 zet")
  print "end"
}
' zet/20221014183030/kbnodes | awk '
$1 == "id" { id = $2 }
$1 ~ /^zet/ {
  split($1, arr, "/")
  print id, arr[2]
}
'

awk '
{
  print "./zc addref -t " $1 " " $2
}
' zet/20221014191506/kbnodereferences | bash

```

` zet/20221014191506/README.md `

# Related

- [20221009095853](/zet/20221009095853/README.md) finished
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221014183030](/zet/20221014183030/README.md) create cards for kb files
- [20221003151443](/zet/20221003151443/README.md) kb
- [20221014150222](/zet/20221014150222/README.md) list of all kb files and references in imported documents
- [20221012212839](/zet/20221012212839/README.md) check all kb markdown files were migrated succesfully
- [20221030022644](/zet/20221030022644/README.md) collector fallacy in my note-taking

Tags:

    #meta
