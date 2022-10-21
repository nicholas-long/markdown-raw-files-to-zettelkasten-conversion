# implement a graph query language

- `./queryinterpreter`
- would allow for quickly and easily scripting some stuff up in cards
- shouldn't be too hard
- like relational database from old awk book
- look at graphql for inspiration?
- look at neo4j for inspiration?
- things this system can do quickly
  - load ids by tags
  - reading all titles is pretty fast
  - possible to grep all content pretty quickly still
  - search by tags and connections

```
all qureries return raw IDs

#dev -> #inbox
return table of devs and inbox, filter results with awk queries like sql where?

#machine ~ /jerry/ -> #list && #file
for all nodes with hashtags #machine and that have the text or grep pattern "jerry" in the card, pair with all nodes that are both #list and #file?

reasonable query syntax?
#user ~ /coyote/
users named coyote
#user ~ /coyote/ -> #fun || #cool
users named coyote and the things they do that are fun or cool

arrow has lowest precedence
everything inside arrows describe a node and are cumulative

|| or prints ids from the result of both expressions
&& joins them ( using sorted unix join? )
~ /re/ grep each ID's card and return only matching ones from before the : in grep output
implement parentheses - sub expressions?
2 operations - concatenate and join is all it needs?

```

` zet/20221013221136/README.md `

# Related

- [20221009095853](/zet/20221009095853/README.md) finished
- [20221020230358](/zet/20221020230358/README.md) test node 1
- [20221009102918](/zet/20221009102918/README.md) get titles in tag links
- [20221008054439](/zet/20221008054439/README.md) graph database
- [20221006084204](/zet/20221006084204/README.md) future enhancements to zet cmd
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #idea #todo
