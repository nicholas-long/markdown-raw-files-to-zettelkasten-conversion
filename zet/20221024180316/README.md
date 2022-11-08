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

# #av
- [20221003150317](/zet/20221003150317/README.md) malwarebytes #av #av
- [20221003150320](/zet/20221003150320/README.md) mcaffee #av #av
- [20221003150321](/zet/20221003150321/README.md) arctic wolf #av #av
- [20221003150322](/zet/20221003150322/README.md) cyber reason #program #av #av
- [20221003150324](/zet/20221003150324/README.md) vmware carbon black cloud #av #av
- [20221003150325](/zet/20221003150325/README.md) Microsoft Defender for Endpoint - enterprise protection #av #microsoft #company #av

#
# have no tags
#
- [20221003150098](/zet/20221003150098/README.md) todo 
- [20221003150195](/zet/20221003150195/README.md) desktop notification reminders in crontab with notify-send 
- [20221003150333](/zet/20221003150333/README.md) blank LM hash hex `AAD3B` 
- [20221003150358](/zet/20221003150358/README.md) jxplorer connect to LDAP GUI access 
- [20221003150459](/zet/20221003150459/README.md) openssl cipher commands encrypt text 
- [20221003151052](/zet/20221003151052/README.md) check network time offset with network time protocol NTP server on windows AD kerberos 
- [20221003151158](/zet/20221003151158/README.md) License 
- [20221003151442](/zet/20221003151442/README.md) Box drawing ascii unicode characters 
- [20221006135903](/zet/20221006135903/README.md) Related 
- [20221006140015](/zet/20221006140015/README.md) Related 
- [20221006140122](/zet/20221006140122/README.md) Related 
- [20221006140135](/zet/20221006140135/README.md) Related 
- [20221006153432](/zet/20221006153432/README.md) Related 
- [20221006153444](/zet/20221006153444/README.md) Related 
- [20221012134544](/zet/20221012134544/README.md) interesting github repo like org roam zettelkasten 
```

` zet/20221024180316/README.md `

# Related

- [20221006032546](/zet/20221006032546/README.md) my original implementation of zet cmd
- [20221021081636](/zet/20221021081636/README.md) template example card to run command output in snippet
- [20221008042814](/zet/20221008042814/README.md) WIP

Tags:

    #idea #question #zet #test #report
