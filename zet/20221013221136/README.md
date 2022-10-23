# implement a graph query language

- `./graphquery`
- allows for quickly and easily scripting some stuff up in cards

- documentation
  - all qureries return raw IDs. add `--human` flag to return markdown formatted links with readable titles.
  - operations must tokenize as bash arguments
  - the core intrinsic operation of the query syntax is intersection. there is a working set of IDs, and a pipeline of operations are performed in succession to filter or transform this set of IDs.
  - a query starts with a full set of all IDs in the graph and filters them by performing operations.
  - query ends when working set is empty or when operations are complete.
  - all nested queries should be done in subprocesses with bash substitution `<( ./graphquery @meta like this )`. this is a dirty hack was discovered to significantly reduce the effort required to create this reference implementation.
  - operations
    - `@tagname`             - filter to IDs of cards that have tag "tagname"
    - `like PATTERN`         - filter IDs of cards that contain case insensitive grep pattern
    - `id 11111111111111`    - intersect with only a particular ID if present, or none. a monad?
    - `:`                    - get all of the references of all of these IDs. transform the current working set of IDs into a new set containing all of the references. core operation used to traverse the graph.
    - `file FILENAME`        - load IDs from a file and discard the current working set of IDs, replacing them
    - `FILENAME`             - "and" a raw file or subquery appearing as an operation will intersect the current working set with IDs appearing in the file
    - `or FILENAME`          - union ( concatenate ) IDs with all IDs appearing in the file or subquery
    - `not FILENAME`         - filter out all IDs appearing in the file or subquery

- examples
```
./graphquery $indexdothtml not <( ./graphquery @meta ) not <( ./graphquery id $CARD_ID : ) # all ids on the main page that are not tagged #meta and not referenced in this card
./graphquery id $CARD_ID : not README.md                             # all references in this card that are not on README.md
./graphquery id $RECENT_MOD : not $recentids not <( echo $MY_ID )    # everything attached to $RECENT_MOD that does not have an id in the tempfile named $recentids
./graphquery $recentids not <( ./graphquery id $RECENT_MOD : )       # IDs in tempfile $recentids that are not attached to $RECENT_MOD
./graphquery @DEL | awk '/^[0-9]+$/ {system("rm -rf zet/" $0)}'      # cleanup all zets with a certain tag - not great practice
```

- future ideas and enhancements
  - have queries return tables, treat the last ID in table as the current set
    - this way, the whole search path can be returned
  - like relational database from old awk book
  - look at graphql for inspiration?
  - look at neo4j for inspiration?

` zet/20221013221136/README.md `

# Related

- [20221009095853](/zet/20221009095853/README.md) finished
- [20221020230358](/zet/20221020230358/README.md) test node 1
- [20221009102918](/zet/20221009102918/README.md) get titles in tag links
- [20221008054439](/zet/20221008054439/README.md) graph database
- [20221006084204](/zet/20221006084204/README.md) future enhancements to zet cmd
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221023085822](/zet/20221023085822/README.md) implement paths or tables

Tags:

    #idea #todo
