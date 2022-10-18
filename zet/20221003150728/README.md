# powershell base64 encode equivalent within ps
```powershell
$Text = GetContent "filename.txt"
$Bytes = [System.Text.Encoding]::Unicode.GetBytes($Text)
$EncodedText = [Convert]::ToBase64String($Bytes)
$EncodedText
```

` zet/20221003150728/README.md `

# Related

- [20221018133841](/zet/20221018133841/README.md) base64 concept

- [20221014185911](/zet/20221014185911/README.md) kb file named kb/hacking/commands/encode-powershell-base64-windows.md
- [20221003150684](/zet/20221003150684/README.md) encode string as base64 url encoded
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150730](/zet/20221003150730/README.md) powershell
- ~/kb/hacking/commands/encode-powershell-base64-windows.md

Tags:

    #command #hacking #windows #encode 
