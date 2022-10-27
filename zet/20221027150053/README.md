# cleanup tags

- concept of `cleanup tags`
  - anything attached to this hub needs tags fixed
- awk-scripting -> #awk #scripting
- bash-scripting -> #bash #scripting
- c -> c-language
- data-engineering-pipelines -> #data #pipelines
- lxd -> container
- active -> ad

```
# awk
./graphquery @awk-scripting not <( ./graphquery @awk ) | xargs -n 1 ./zc addtag -t awk
./graphquery @awk-scripting not <( ./graphquery @scripting ) | xargs -n 1 ./zc addtag -t scripting
./graphquery @awk-scripting | xargs -n 1 ./zc deltag -t awk-scripting

# bash-scripting -> #bash #scripting
./graphquery @bash-scripting not <( ./graphquery @bash ) | xargs -n 1 ./zc addtag -t bash
./graphquery @bash-scripting not <( ./graphquery @scripting ) | xargs -n 1 ./zc addtag -t scripting
./graphquery @bash-scripting | xargs -n 1 ./zc deltag -t bash-scripting

# data-engineering-pipelines -> #data #pipelines
./graphquery @data-engineering-pipelines not <( ./graphquery @data ) | xargs -n 1 ./zc addtag -t data
./graphquery @data-engineering-pipelines not <( ./graphquery @pipelines ) | xargs -n 1 ./zc addtag -t pipelines
./graphquery @data-engineering-pipelines | xargs -n 1 ./zc deltag -t data-engineering-pipelines

# lxd -> container
./graphquery @lxd not <( ./graphquery @container ) | xargs -n 1 ./zc addtag -t container
./graphquery @lxd | xargs -n 1 ./zc deltag -t lxd

# active -> ad
./graphquery @active not <( ./graphquery @ad ) | xargs -n 1 ./zc addtag -t ad
./graphquery @active | xargs -n 1 ./zc deltag -t active

```

` zet/20221027150053/README.md `

# Related

- [20221017173622](/zet/20221017173622/README.md) fix problem tags in cards
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub

Tags:

    #meta #hub
