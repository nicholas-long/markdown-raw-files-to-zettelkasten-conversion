# cleanup fix and consolidate tags

- concept of `cleanup tags`
  - anything attached to this hub needs tags fixed
- questions / ideas
  - "buzzwords" - what to do with this? could link them to note
  - should github be a concept hub or a hashtag? or both?
  - keep useful as a tag or label?
- text vs textprocessing
- things linked docker should be tagged container or docker
```

# things linked docker should be tagged container or docker
- [20221009015558](/zet/20221009015558/README.md) docker #docker #concept #hub

./graphquery --human id 20221009015558 refs not <( ./graphquery taglist 'docker,hacking' )

[diag] refs  20221009015558 
- [20221003151273](/zet/20221003151273/README.md) run container in background without exiting 
- [20221003151374](/zet/20221003151374/README.md) bash scripting build and run CrackMapExec docker #bash #script #trick #container #bruteforcing #command
- [20221003151378](/zet/20221003151378/README.md) bash scripting build and run enum4linux-ng docker #bash #script #enumeration #util
- [20221003151380](/zet/20221003151380/README.md) bash scripting run neo4j in a docker #bash #script #trick #container #graph
- [20221003151391](/zet/20221003151391/README.md) bash scripting clone github repository and build docker image with its name #bash #script #container #trick
- [20221006025356](/zet/20221006025356/README.md) linux #concept #hub #linux
- [20221009021452](/zet/20221009021452/README.md) container #container #concept #hub
- [20221014071406](/zet/20221014071406/README.md) using tools together in strange / convenient ways - examples #idea
- [20221014081712](/zet/20221014081712/README.md) ways to get hacked #idea #info
- [20221015004252](/zet/20221015004252/README.md) htb opensource machine #idea #boxes
- [20221017070405](/zet/20221017070405/README.md) docker compose #concept #program

--------------------------------------------------------------------------------
# done
--------------------------------------------------------------------------------

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

# crackmapexec -> bruteforcing if not
./graphquery @crackmapexec not <( ./graphquery @bruteforcing ) | xargs -n 1 ./zc addtag -t bruteforcing
./graphquery @crackmapexec | xargs -n 1 ./zc deltag -t crackmapexec

./graphquery @substitution | xargs -n 1 ./zc deltag -t substitution

```

- done
- awk-scripting -> #awk #scripting
- bash-scripting -> #bash #scripting
- c -> c-language
- data-engineering-pipelines -> #data #pipelines
- lxd -> container
- active -> ad
- crowbar
- xterm
- enh -> enhancement
- crackmapexec -> bruteforcing if not
- create filesystem tag for ext4 and other future stuff
- util utilities -> util
  - remove
    - utilities
    - utility
- [20221003151299](/zet/20221003151299/README.md) bash tricks

` zet/20221027150053/README.md `

# Related

- [20221017173622](/zet/20221017173622/README.md) report about fixing problem tags in cards
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub

Tags:

    #meta #hub
