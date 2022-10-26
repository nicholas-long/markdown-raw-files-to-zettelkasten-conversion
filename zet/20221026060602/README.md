# remove dependency on lazygit

- get rid of lazygit because all i do is commit, pull, enrich, push
  - completely automate this?
    - commit user changes
    - pull
    - run enrich scripts
    - repeat enrich up to N times, adding changes to git and checking files for changes
    - if any of these things fails, bail and tell user
    - use `git status --porcelain=2` to check files
  - could present git diff at end and prompt?
- is extra native platform binary not necessary for project - cool TUI

```
```

` zet/20221026060602/README.md `

# Related

- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221014154703](/zet/20221014154703/README.md) lazygit program
- [20221003150798](/zet/20221003150798/README.md) git
- [20221008182309](/zet/20221008182309/README.md) learning git internals
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221006084204](/zet/20221006084204/README.md) future enhancements to zet cmd
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub

Tags:

    #idea
