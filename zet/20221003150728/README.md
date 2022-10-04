# powershell base64 encode equivalent within ps
```powershell
$Text = GetContent "filename.txt"
$Bytes = [System.Text.Encoding]::Unicode.GetBytes($Text)
$EncodedText = [Convert]::ToBase64String($Bytes)
$EncodedText
```

# References
- [20221003150730](/zet/20221003150730/README.md) powershell
- ~/kb/hacking/commands/encode-powershell-base64-windows.md

Tags:
    #assorted #command #hacking #windows #encode
