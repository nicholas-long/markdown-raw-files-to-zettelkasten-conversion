# windows alternate data streams commands

- creating alt streams
```dos
echo <YOUR DATA> > filename.txt:streamname.txt
```

- see content with powershell
- display `Zone.Identifier` stream
```powershell
Get-Content -Stream Zone.Identifier $filename
```

- how to list directory for alt streams
```dos
dir /r
```

` zet/20221003151045/README.md `

# Related

- [20221014185718](/zet/20221014185718/README.md) kb file named kb/hacking/windows/windows-information.md
- ~/kb/hacking/windows/windows-information.md
- [20221003151153](/zet/20221003151153/README.md) windows

Tags:

    #hacking #windows #info
