# git recover orphaned commits and files and restore a directory after reset
```bash
git reflog --all
# find commit hash from its message
git checkout $COMMIT_HASH -- .
```

# Related

- [20221003150798](/zet/20221003150798/README.md) git
- ~/kb/hacking/commands/git.md

Tags:

    #command #hacking #git 
