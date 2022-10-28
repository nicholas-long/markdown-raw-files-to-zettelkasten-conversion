# optimizations for graph queries

- optimized tag union process - done
  - one big awk query on tag index files
- figure out if some sorts can be removed
- create specific code for each action for walkquery or for graphquery and walkquery both
- walkquery shouldn't use graphquery as a subprocess - optimize instead
- added `saverefs` script for optimization
  - partitions references between nodes into 100 files in `refs/` directory for quick lookup

```bash
echo "a|;'-#,b,c" | sed -e 's/[<>\|&#;"'\'']//g' -e 's/,/\n/g'| awk '{print "tagindex/" $0 ".md"}'

list="sed,awk"
echo "$list" | sed -e 's/[<>\|&#;"'\'']//g' -e 's/,/\n/g'| awk '!/^$/ {print "tagindex/" $0 ".md"}' | \
  xargs sed -e 's/^.*zet\///' -e 's|/.*$||'

./graphquery taglist sed,awk,bash,ex

# test it
./graphquery --human taglist 'to-try-list,hub,concept,skill,tip,trick,exploit,command,tool,cert,info,program,privesc,analysis'

```

` zet/20221028021608/README.md `

# Related

- [20221007175034](/zet/20221007175034/README.md) optimizations for enrichment process
- [20221013221136](/zet/20221013221136/README.md) graph query language for zettelkasten
- [20221023085822](/zet/20221023085822/README.md) implement returning paths or tables in graph query language
- [20221028023010](/zet/20221028023010/README.md) splitting comma separated list into filenames safely in scripting with bash, awk, and sed
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #idea #bash #optimization
