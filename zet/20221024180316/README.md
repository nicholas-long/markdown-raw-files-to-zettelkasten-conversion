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
- [20221003150689](/zet/20221003150689/README.md) wpscan initial database exports #command #hacking #wpscan #DEL #DEL
- [20221003150691](/zet/20221003150691/README.md) wpscan initial vulnerable themes #command #hacking #wpscan #DEL #DEL
- [20221003150692](/zet/20221003150692/README.md) wpscan initial all plugins passive scan #command #hacking #wpscan #DEL #DEL
- [20221003150757](/zet/20221003150757/README.md) MSFVENOM tricks #command #hacking #msfvenom #DEL #DEL
- [20221003150765](/zet/20221003150765/README.md) MSFVENOM Linux Binary (.elf) 32 Bit (x86) #command #hacking #msfvenom #DEL #DEL
- [20221003150766](/zet/20221003150766/README.md) MSFVENOM Linux Binary (.elf) #command #hacking #msfvenom #DEL #DEL
- [20221003150771](/zet/20221003150771/README.md) MSFVENOM Windows Binary (.exe) executable 64 Bit (x64) #command #hacking #msfvenom #DEL #DEL
- [20221003150775](/zet/20221003150775/README.md) MSFVENOM Windows Binary (.exe) executable 32 Bit (x86) #command #hacking #msfvenom #DEL #DEL
- [20221003150776](/zet/20221003150776/README.md) MSFVENOM Windows Binary (.exe) executable #command #hacking #msfvenom #DEL #DEL

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
