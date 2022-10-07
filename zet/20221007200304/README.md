# how to use zc cmd

- create new note with `./zc spawn`
  - optionally provide query with `-q`
    - prefilters files by text content with grep
  - search text in fzf and select relevant things with `Tab` & `Shift Tab`
- write note
- enrich it on your computer if you want `./zc enrich`
  - optional - done by github actions if you do not
  - inserts backlinks
  - converts integer IDs into proper md formatted links
  - updates / adds titles for all links
- commit
  - enriched with github actions scripts
- editing notes
  - add links by ID, i.e. to add this note, use `- 20221007200304`
    - links will get cleaned up and enriched with titles in the enrich process so you don't have to type filenames or titles
- removing links
  - `./zc unlink 11111111111111 22222222222222`
    - lines referencing those IDs get deleted using `sed -i`, so check git if you put IDs in the content part of the zettel

` zet/20221007200304/README.md `

# Related

- [20221003150551](/zet/20221003150551/README.md) linux

- [20221006025356](/zet/20221006025356/README.md) linux

- [20221003150067](/zet/20221003150067/README.md) vim

- [20221003150798](/zet/20221003150798/README.md) git

- [20221007194303](/zet/20221007194303/README.md) github

- [20221006013313](/zet/20221006013313/README.md) zettelkasten

- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd

Tags:

    #reference #command #zettelkasten #implementation
