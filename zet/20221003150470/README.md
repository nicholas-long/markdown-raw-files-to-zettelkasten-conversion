# powershell tricks mount smb share as drive "letter"
```powershell
New-PSDrive -Name "temp" -PSProvider "FileSystem" -Root "\\192.168.1.69\temp"
# with PSCredential
$pass = ConvertTo-SecureString 'password123' -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential('.\use1', $pass)
New-PSDrive -Name "temp" -PSProvider "FileSystem" -Credential $cred -Root "\\192.168.1.69\temp"
```

` zet/20221003150470/README.md `

# Related

- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221014190039](/zet/20221014190039/README.md) kb file named kb/hacking/powershell/powershell-tricks.md
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150476](/zet/20221003150476/README.md) powershell tricks
- ~/kb/hacking/powershell/powershell-tricks.md

Tags:

    #hacking #trick #powershell 
