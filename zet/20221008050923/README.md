# tmux buffers as bash script pipe debug file buffer

content

```
tmux saveb -
20221003151332
20221006051705
20221006215353
20221003151143
20221006020303
20221003151329
tmux saveb - | head -n 1
20221003151332

./zc fixspaces $(tmux saveb - | head -n 1)
[diag] fixspaces  20221003151332

bat zet/$(tmux saveb - | head -n 1)/README.md
```

` zet/20221008050923/README.md `

# Related

- [20221010180841](/zet/20221010180841/README.md) screen and tmux rwxrob video
- [20221003151299](/zet/20221003151299/README.md) bash tricks
- [20221003151332](/zet/20221003151332/README.md) bash scripting
- [20221003151329](/zet/20221003151329/README.md) bash scripting
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- [20221003150079](/zet/20221003150079/README.md) tmux program
- [20221003150075](/zet/20221003150075/README.md) tmux tricks
- [20221003151278](/zet/20221003151278/README.md) linux data science and data engineering pipelines hub
- [20221003150662](/zet/20221003150662/README.md) data analysis commands
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221007182026](/zet/20221007182026/README.md) scripts related to zettelkasten conversion
- [20221006032546](/zet/20221006032546/README.md) my original implementation of zet cmd
- [20221007043646](/zet/20221007043646/README.md) findings about implementing zettelkasten

Tags:

    #workflow
