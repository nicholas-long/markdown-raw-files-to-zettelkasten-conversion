# keep track of scripts with graphquery

- concept of `keep track of scripts with graphquery`

- currently enabled uses of graph query in enrich steps
```
181 zet/20221009192000/snippet ./graphquery --human $mainreadme not <( ./graphquery @meta ) not <( ./graphquery id $CARD_ID : ) # all ids on the main page that are not tagged #meta and not referenced in this card
159 zet/20221111225634/snippet ./graphquery --human <(zet/20221025005842/linecounts $(find zet -name README.md) | awk '$1 == 0 {split($2,arr,"/"); print arr[2]} ') not <( ./graphquery @hub )
129 zet/20221026181955/snippet   not <( ./graphquery taglist 'to-try-list,hub,concept,skill,tip,trick,exploit,command,tool,cert,info,program,privesc,analysis' )
124 zet/20221017173622/snippet   not <( ./graphquery taglist 'meta,command,hub,kb_import,tip,trick,tool,repo,install,syntax,util,script,streamer,finding' )
117 zet/20221026135114/snippet ./graphquery --human <(find zet -name README.md | xargs implementation/scanrefs | awk '$1 == "duplicate" {print $2}')
107 zet/20221005200242/snippet awk '$2 != 1 {print $1}' $tf | ./graphquery --human '/dev/stdin' | paste <( awk '$2 != 1 {print $2}' $tf) -
106 zet/20221009192000/snippet ./graphquery --human id $CARD_ID : not $mainreadme # all references in this card that are not on README.md
101 zet/20221006213953/snippet ./graphquery --human @videonotes or <( ./graphquery @video @notes ) not <(./graphquery id $MYID refs)
91 zet/20221005200242/snippet awk '$2 == 1 {print $1}' $tf | ./graphquery --human '/dev/stdin' not <( ./graphquery @DEL )
78 zet/20221012144502/autoexec_enrich ./graphquery id $RECENT_MOD : not $recentids not <( echo $MY_ID ) | grep . | \
75 zet/20221012144502/autoexec_enrich ./graphquery $recentids not <( ./graphquery id $RECENT_MOD : ) | grep . | \
67 zet/20221028194014/snippet ' | sort -nr | grep -v -f <( ./graphquery @DEL ) # hide deleted IDs
56 zet/20221026181955/snippet zet/20221023085822/walkquery --human @to-try-list refs \
46 zet/20221017173622/snippet ./graphquery '@done' '@hub' refs > $donethings
44 zet/20221017173622/snippet   or <( ./graphquery id $bashtricks refs ) \
44 zet/20221005200242/snippet     not <( ./graphquery taglist 'meta,hub' )
40 zet/20221026181955/snippet   not <( ./graphquery id $KB_ID refs ) \
37 zet/20221017173622/snippet ./graphquery --human taglist 'bash' \
35 zet/20221024180316/snippet ' | ./graphquery --human /dev/stdin
34 zet/20221024180316/snippet   ./graphquery --human $duptags/$t
30 zet/20221005200242/snippet   ./graphquery id $MYID refs \
```

` zet/20221028014614/README.md `

# Related

- [20221007175034](/zet/20221007175034/README.md) optimizations for enrichment process
- [20221021081636](/zet/20221021081636/README.md) template example card to run command output in snippet

Tags:

    #idea #meta #report
