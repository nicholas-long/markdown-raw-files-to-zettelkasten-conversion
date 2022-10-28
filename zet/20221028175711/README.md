# symlink these cards

- concept of `symlink these cards`
md5sum: zet/20221026181955/autoexec_enrich: No such file or directory
- 20221026181955 is disabled - fine
- look for `export MY_DIR="$2"`
- real md5sum `d20075d6b6db8e277f7897e1fa91f868  zet/20221021081636/autoexec_enrich`
- second snippet `98158c0f3b5b15bc103b2f8bd079fc13  zet/20221026165857/autoexec_enrich`
- this experiment did not go well - the scripts do not run. maybe instead track files that are different from expected?
- list of every one (excluding main template 20221021081636)
```
20221005200242
20221008063052
20221017173622
20221024180316
20221026064448
20221026135114
20221026181955
20221028014614
20221028033132
20221028161058
```
- md5sums
```
md5sum zet/20221005200242/autoexec_enrich
md5sum zet/20221008063052/autoexec_enrich
md5sum zet/20221017173622/autoexec_enrich
md5sum zet/20221024180316/autoexec_enrich
md5sum zet/20221026064448/autoexec_enrich
md5sum zet/20221026135114/autoexec_enrich
md5sum zet/20221028014614/autoexec_enrich
md5sum zet/20221028033132/autoexec_enrich
md5sum zet/20221028161058/autoexec_enrich
md5sum zet/20221026181955/autoexec_enrich #missing because autoexec_enrich.bak #missing because
md5sum zet/20221026181955/autoexec_enrich.bak

d20075d6b6db8e277f7897e1fa91f868  zet/20221028014614/autoexec_enrich
d20075d6b6db8e277f7897e1fa91f868  zet/20221028033132/autoexec_enrich
d20075d6b6db8e277f7897e1fa91f868  zet/20221028161058/autoexec_enrich
523088d4312010f5e2663e76307d7648  zet/20221005200242/autoexec_enrich
523088d4312010f5e2663e76307d7648  zet/20221008063052/autoexec_enrich
523088d4312010f5e2663e76307d7648  zet/20221017173622/autoexec_enrich
523088d4312010f5e2663e76307d7648  zet/20221024180316/autoexec_enrich
523088d4312010f5e2663e76307d7648  zet/20221026064448/autoexec_enrich
523088d4312010f5e2663e76307d7648  zet/20221026135114/autoexec_enrich
523088d4312010f5e2663e76307d7648  zet/20221026181955/autoexec_enrich.bak

# check them out in vim
args zet/20221028175711/README.md zet/20221021081636/autoexec_enrich zet/20221026181955/autoexec_enrich.bak zet/20221026165857/autoexec_enrich
tab all

realone="zet/20221021081636/autoexec_enrich"

# do it

rm zet/20221028014614/autoexec_enrich
rm zet/20221028033132/autoexec_enrich
rm zet/20221028161058/autoexec_enrich
rm zet/20221005200242/autoexec_enrich
rm zet/20221008063052/autoexec_enrich
rm zet/20221017173622/autoexec_enrich
rm zet/20221024180316/autoexec_enrich
rm zet/20221026064448/autoexec_enrich
rm zet/20221026135114/autoexec_enrich
rm zet/20221026181955/autoexec_enrich.bak

realone="zet/20221021081636/autoexec_enrich"
ln -sr $realone zet/20221028014614/autoexec_enrich
ln -sr $realone zet/20221028033132/autoexec_enrich
ln -sr $realone zet/20221028161058/autoexec_enrich
ln -sr $realone zet/20221005200242/autoexec_enrich
ln -sr $realone zet/20221008063052/autoexec_enrich
ln -sr $realone zet/20221017173622/autoexec_enrich
ln -sr $realone zet/20221024180316/autoexec_enrich
ln -sr $realone zet/20221026064448/autoexec_enrich
ln -sr $realone zet/20221026135114/autoexec_enrich
ln -sr $realone zet/20221026181955/autoexec_enrich.bak

```

` zet/20221028175711/README.md `

# Related

- [20221021081636](/zet/20221021081636/README.md) template example card to run command output in snippet
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221026165857](/zet/20221026165857/README.md) template example card to replace second snippet
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub

Tags:

    #idea
