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

- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221013180230](/zet/20221013180230/README.md) session cookie, API key, or access token
- [20221006032546](/zet/20221006032546/README.md) my original implementation of zet cmd
- [20221008215400](/zet/20221008215400/README.md) file
- [20221008061845](/zet/20221008061845/README.md) workflow
- [20221007194303](/zet/20221007194303/README.md) github
- [20221003150798](/zet/20221003150798/README.md) git
- [20221006051705](/zet/20221006051705/README.md) moving to real zk implementation

Tags:

    #idea
