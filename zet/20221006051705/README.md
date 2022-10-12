# moving to real zk implementation

- private repo
  - putting on github not ideal - information disclosure
  - working daily notes
- public repo
  - can literally just copy information from private repos to public in by copying the directories in
    - enriching process should remove any dead links to private zettels
- take over role of kb searching with new shortcuts in `pen-test-environ` repo
- workflow for releasing private -> public
  - copy all zet/ directory
  - go through lazygit, revert any files containing PII before commit -> deleted
  - enrich -> deletes links?
    - eventually, this should mark links as dead
    - go through and remove any dead links that reveal sensitive information or disclose IDs which could be used to determine file paths on your system
  - make sure content is appropriate
  - commit and push to a branch, pull request

` zet/20221006051705/README.md `

# Related

- [20221012145054](/zet/20221012145054/README.md) things you can organize in personal life in private zettel notes
- [20221010161950](/zet/20221010161950/README.md) create issue for things tagged #feature, #enh, ... automatically
- workflow
- [20221008214406](/zet/20221008214406/README.md) sharing programming projects with zettelkasten
- [20221007182026](/zet/20221007182026/README.md) scripts related to zettelkasten conversion
- [20221007175034](/zet/20221007175034/README.md) optimizations for enrichment process
- [20221006140520](/zet/20221006140520/README.md) zet cmd spawn feature
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project

Tags:

    #zettelkasten
