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
- [20221003150386](/zet/20221003150386/README.md) krbrelayx dnstool.py Add/modify/delete Active Directory Integrated DNS records via LDAP. #hacking #repositories #important #DEL #DEL
- [20221003150387](/zet/20221003150387/README.md) krbrelayx addspn.py This tool can add/remove/modify Service Principal Names on accounts in AD over LDAP. #hacking #repositories #important #DEL #DEL

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
