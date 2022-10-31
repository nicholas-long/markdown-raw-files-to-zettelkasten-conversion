# optimizations for enrichment process

- added awk script `zet/20221006032546/scanrefs`
  - very fast way to detect problems and report about them
- a lot of new scripts and queries being added... need a way to do something periodically instead of every enrich step
  - clean up or comment out unused graph query scripts
  - should optimize tag union process
- optimized refs to be stored in partition directory files
  - less git noise
  - fast lookup
  - partitioning idea from kafka?
  - stored in deterministic order so enrich does not produce different results on servers
  - script `implementation/saverefs` generates partition

` zet/20221007175034/README.md `

# Related

- [20221021221931](/zet/20221021221931/README.md) cache headings
- [20221006153641](/zet/20221006153641/README.md) zettelkasten on github
- [20221006051705](/zet/20221006051705/README.md) moving to real zk implementation
- [20221006010149](/zet/20221006010149/README.md) inserting lines with sed
- [20221006012927](/zet/20221006012927/README.md) update multiple zettel links
- [20221007051119](/zet/20221007051119/README.md) zet cmd enrich process
- [20221007043646](/zet/20221007043646/README.md) findings about implementing zettelkasten
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- [20221006032546](/zet/20221006032546/README.md) my original implementation of zet cmd
- [20221028014614](/zet/20221028014614/README.md) keep track of scripts with graphquery
- [20221028021608](/zet/20221028021608/README.md) optimizations for graph queries
- [20221012153643](/zet/20221012153643/README.md) kafka

Tags:

    #zettelkasten #bash #awk #meta
