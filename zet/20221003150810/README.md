# wfuzz fuzzing details fuzz multiple parameters

- use two parameters, i.e. `-z range,1-100` `-w random-ips.lst`
- `-m zip` this will zip the parameters: attempt line 1 from both lists, then line 2 from both, etc, until exhausted
- use `FUZ2Z` for the second fuzz placeholder
  - example: `-H 'X-Forwarded-For: FUZ2Z'`

` zet/20221003150810/README.md `

# Related

- [20221014185849](/zet/20221014185849/README.md) kb file named kb/hacking/commands/wfuzz-fuzzing.md
- [20221003150812](/zet/20221003150812/README.md) wfuzz fuzzing details
- ~/kb/hacking/commands/wfuzz-fuzzing.md

Tags:

    #command #hacking #wfuzz 
