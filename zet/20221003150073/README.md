# Run vim as a script on datafile, write to file `output`

```bash
# setup
echo data > datafile                                            

# Run vim as a script on `datafile`, write to file `output`
vim -c ':execute "normal! yyp\<esc>:w! output\<enter>\<esc>:q!\<enter>"' datafile
```

` zet/20221003150073/README.md `

# Related

- [20221003150175](/zet/20221003150175/README.md) ex commands  Some of these might apply to ed as well
- [20221014185501](/zet/20221014185501/README.md) kb file named kb/vim/run-as-script.md
- [20221003151332](/zet/20221003151332/README.md) bash scripting
- [20221008214631](/zet/20221008214631/README.md) vim hotkeys and tricks
- [20221003151299](/zet/20221003151299/README.md) bash tricks
- [20221003151329](/zet/20221003151329/README.md) bash scripting
- [20221003150067](/zet/20221003150067/README.md) vim
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- [20221006035818](/zet/20221006035818/README.md) rwxrob skilstak beginner boost videos

Tags:

    
