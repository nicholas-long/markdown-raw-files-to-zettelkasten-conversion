## base64 encode equivalent within ps
```powershell
$Text = GetContent "filename.txt"
$Bytes = [System.Text.Encoding]::Unicode.GetBytes($Text)
$EncodedText = [Convert]::ToBase64String($Bytes)
$EncodedText
```
