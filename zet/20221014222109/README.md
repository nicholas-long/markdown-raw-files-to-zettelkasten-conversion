# workflow for releasing zet cards from private to public

- copy all zet/ directory
- go through lazygit, revert any files containing PII before commit -> deleted
- enrich -> deletes links?
  - eventually, this should mark links as dead
  - go through and remove any dead links that reveal sensitive information or disclose IDs which could be used to determine file paths on your system
- make sure content is appropriate
- commit and push to a branch, pull request

```
```

` zet/20221014222109/README.md `

# Related

- [20221006051705](/zet/20221006051705/README.md) moving to real zk implementation

Tags:

    #idea
