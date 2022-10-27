# cleanup tags

- concept of `cleanup tags`
- awk-scripting -> #awk #scripting
- bash-scripting -> #bash #scripting
- c -> c-language

```
./graphquery @awk-scripting not <( ./graphquery @awk ) | xargs -n 1 ./zc addtag -t awk
./graphquery @awk-scripting not <( ./graphquery @scripting ) | xargs -n 1 ./zc addtag -t scripting

./graphquery @awk-scripting | xargs -n 1 ./zc deltag -t awk-scripting

#./graphquery @awk-scripting not <( ./graphquery @scripting )
# bash-scripting -> #bash #scripting

./graphquery @bash-scripting not <( ./graphquery @bash ) | xargs -n 1 ./zc addtag -t bash
./graphquery @bash-scripting not <( ./graphquery @scripting ) | xargs -n 1 ./zc addtag -t scripting
./graphquery @bash-scripting | xargs -n 1 ./zc deltag -t bash-scripting

```

` zet/20221027150053/README.md `

# Related

- [20221017173622](/zet/20221017173622/README.md) fix problem tags in cards
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub

Tags:

    #meta
