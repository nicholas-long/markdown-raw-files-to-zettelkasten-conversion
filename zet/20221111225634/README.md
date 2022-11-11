# fix empty cards with only links

- concept of `fix empty cards with only links`

```
./graphquery --human <(zet/20221025005842/linecounts $(find zet -name README.md) | awk '$1 == 0 {split($2,arr,"/"); print arr[2]} ')
```

` zet/20221111225634/README.md `

# Related

- [20221025005842](/zet/20221025005842/README.md) fix some empty zettels using graph queries
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221005200242](/zet/20221005200242/README.md) empty zettels to fix
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub

Tags:

    #idea #meta
