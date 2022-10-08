# tmux buffers as bash script pipe debug file buffer

content

```
┌──(kali㉿kali)-[~/fun/markdown-raw-files-to-zettelkasten-conversion]
└─$ tmux saveb -
20221003151332
20221006051705
20221006215353
20221003151143
20221006020303
20221003151329
┌──(kali㉿kali)-[~/fun/markdown-raw-files-to-zettelkasten-conversion]
└─$ tmux saveb - | head -n 1
20221003151332

┌──(kali㉿kali)-[~/fun/markdown-raw-files-to-zettelkasten-conversion]
└─$ ./zc fixspaces $(tmux saveb - | head -n 1)
[diag] fixspaces  20221003151332
───────┬───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
       │ File: /tmp/tmp.EhttFdEEHa
       │ Size: 642 B
───────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   1   │ # bash scripting
   2   │
   3   │ ` zet/20221003151332/README.md `
   4   │
   5   │ # Related
   6   │
   7   │ - [20221008005525](/zet/20221008005525/README.md) bash scripting pitfalls and anti-patterns
   8   │ - [20221007220451](/zet/20221007220451/README.md) hacking notes node
   9   │ - [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
  10   │ - [20221006191703](/zet/20221006191703/README.md) bash trick printf to variable
  11   │ - [20221003151331](/zet/20221003151331/README.md) bash scripting check if a variable is empty
  12   │ - ~/kb/bash-scripting/check-empty-var.md
  13   │ - [20221004212452](/zet/20221004212452/README.md) keyword stuffing zettels to fix bash sh
  14   │
  15   │ Tags:
  16   │
  17   │     #bash-scripting #check
───────┴───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

┌──(kali㉿kali)-[~/fun/markdown-raw-files-to-zettelkasten-conversion]
└─$ bat zet/$(tmux saveb - | head -n 1)/README.md
───────┬───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
       │ File: zet/20221003151332/README.md
       │ Size: 646 B
───────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   1   │ # bash scripting
   2   │
   3   │ ` zet/20221003151332/README.md `
   4   │
   5   │ # Related
   6   │
   7   │ - [20221008005525](/zet/20221008005525/README.md) bash scripting pitfalls and anti-patterns
   8   │
   9   │ - [20221007220451](/zet/20221007220451/README.md) hacking notes node
  10   │
  11   │ - [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
  12   │
  13   │ - [20221006191703](/zet/20221006191703/README.md) bash trick printf to variable
  14   │
  15   │ - [20221003151331](/zet/20221003151331/README.md) bash scripting check if a variable is empty
  16   │ - ~/kb/bash-scripting/check-empty-var.md
  17   │ - [20221004212452](/zet/20221004212452/README.md) keyword stuffing zettels to fix bash sh
  18   │
  19   │ Tags:
  20   │
  21   │     #bash-scripting #check
───────┴───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

┌──(kali㉿kali)-[~/fun/markdown-raw-files-to-zettelkasten-conversion]
└─$ ./zc fixspaces $(tmux saveb - | head -n 1)
[diag] fixspaces  20221003151332
───────┬───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
       │ File: /tmp/tmp.ioLCyW62xq
       │ Size: 642 B
───────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   1   │ # bash scripting
   2   │
   3   │ ` zet/20221003151332/README.md `
   4   │
   5   │ # Related
   6   │
   7   │ - [20221008005525](/zet/20221008005525/README.md) bash scripting pitfalls and anti-patterns
   8   │ - [20221007220451](/zet/20221007220451/README.md) hacking notes node
   9   │ - [20221007043259](/zet/20221007043259/README.md) zettelkasten generic ideas
  10   │ - [20221006191703](/zet/20221006191703/README.md) bash trick printf to variable
  11   │ - [20221003151331](/zet/20221003151331/README.md) bash scripting check if a variable is empty
  12   │ - ~/kb/bash-scripting/check-empty-var.md
  13   │ - [20221004212452](/zet/20221004212452/README.md) keyword stuffing zettels to fix bash sh
  14   │
  15   │ Tags:
  16   │
  17   │     #bash-scripting #check
───────┴───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
```

` zet/20221008050923/README.md `

# Related

- [20221003151299](/zet/20221003151299/README.md) bash tricks
- [20221003151332](/zet/20221003151332/README.md) bash scripting
- [20221003151329](/zet/20221003151329/README.md) bash scripting
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- [20221003150079](/zet/20221003150079/README.md) tmux
- [20221003150075](/zet/20221003150075/README.md) tmux
- [20221003151278](/zet/20221003151278/README.md) linux data science
- [20221003150662](/zet/20221003150662/README.md) data analysis commands

Tags:

    #workflow
