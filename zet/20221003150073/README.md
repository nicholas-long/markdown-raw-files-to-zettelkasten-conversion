# Run vim as a script on datafile, write to file `output`
```bash
# setup
echo data > datafile                                            

# Run vim as a script on `datafile`, write to file `output`
vim -c ':execute "normal! yyp\<esc>:w! output\<enter>\<esc>:q!\<enter>"' datafile
```
` zet/20221003150073/README.md `

# Related


Tags:
- [20221006035818](/zet/20221006035818/README.md) rwxrob skilstak beginner boost videos

    
