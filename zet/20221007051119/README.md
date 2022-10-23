# zet cmd enrich process

- a complicated awk script named scanrefs drives the enrich process by reporting all link problems
- the `enrich` action runs this script to get the report and act on it based on the findings

```bash
# run it twice because scripts in cards are still strange.
./zc enrich
./zc enrich
```

` zet/20221007051119/README.md `

# Related

- [20221021221931](/zet/20221021221931/README.md) cache headings
- [20221013204452](/zet/20221013204452/README.md) make a video of terminal graph browser and zkvr workflow loop in action
- [20221011153230](/zet/20221011153230/README.md) template example card for scripts
- [20221008214406](/zet/20221008214406/README.md) sharing programming projects with zettelkasten
- [20221009091132](/zet/20221009091132/README.md) new links should come in at the bottom
- [20221007175034](/zet/20221007175034/README.md) optimizations for enrichment process
- [20221007062330](/zet/20221007062330/README.md) broken stuff to fix
- [20221006032933](/zet/20221006032933/README.md) problems / issues with zet cmd
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #bash #zettelkasten 
