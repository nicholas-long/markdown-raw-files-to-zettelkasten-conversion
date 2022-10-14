# make a list of sparse nodes

- make a list of sparse nodes
- do not connect to them, just sort by shittyness of links and paste them here in the content
- go fix them

```
find zet -name README.md | xargs implementation/scanrefs
find zet -name README.md | xargs implementation/scanrefs | awk '/^ref/'

find zet -name README.md | xargs implementation/scanrefs | awk '/^ref/ { refs[$2]++ } END { for (r in refs) if (refs[r] < 3) print refs[r], r } ' | sort -n

# going to add these as references and enrich the document

./zc enrich_liks_single 20221013193405
```

` zet/20221013193405/README.md `

# Related

- [20221009095853](/zet/20221009095853/README.md) finished
- [20221014024704](/zet/20221014024704/README.md) list of sparse nodes
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221008063052](/zet/20221008063052/README.md) autorunning scripts in cards
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #graph
