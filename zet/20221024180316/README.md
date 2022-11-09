# check for duplicate hashtags in cards

- concept of `what if a card has duplicate hashtags?`
- experimental results
  - should not cause problems - ignore duplicates
  - should not add multiple entries to tag index
  - is tag index even sorted?
  - does not seem to cause a problem
- detecting
  - added script `zet/20221024180316/gettags`

```
#
# have duplicate tags
#

# #DEL
- [20221003151008](/zet/20221003151008/README.md) LFI or directory traversal procedures file wordlists #hacking #lfi #DEL #DEL
- [20221003151126](/zet/20221003151126/README.md) active directory  delegation unconstrained #hacking #windows #DEL #DEL
- [20221003151143](/zet/20221003151143/README.md) active directory  exploiting permissions #hacking #windows #DEL #DEL

# #windows
- [20221003150616](/zet/20221003150616/README.md) PureFTP Create FTP Script (On Victim) #command #hacking #windows #windows #ftp

#
# have no tags
#
```

` zet/20221024180316/README.md `

# Related

- [20221006032546](/zet/20221006032546/README.md) my original implementation of zet cmd
- [20221021081636](/zet/20221021081636/README.md) template example card to run command output in snippet
- [20221014215609](/zet/20221014215609/README.md) finished, but with ongoing related work

Tags:

    #idea #question #zet #test #report
