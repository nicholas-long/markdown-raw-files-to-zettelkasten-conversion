# add step to check for duplicate links in enrich scanrefs

- fixed the bug where duplicate links start multiplying
- need to remove duplicate links - added check to step in zetcmd enrich

- `find zet -name README.md | xargs implementation/scanrefs | grep duplicate`
```
checking for duplicates...
```

` zet/20221026135114/README.md `

# Related

- [20221024210849](/zet/20221024210849/README.md) duplicate links cause problems in enrich step
- [20221006032546](/zet/20221006032546/README.md) my original implementation of zet cmd
- [20221021081636](/zet/20221021081636/README.md) template example card to run command output in snippet
- [20221026152737](/zet/20221026152737/README.md) template snippet cards not getting run because of parameter issues
- [20221009095853](/zet/20221009095853/README.md) finished

Tags:

    #idea #test #report
