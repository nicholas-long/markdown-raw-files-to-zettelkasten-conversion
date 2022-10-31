# make links for refs with symlinks

- concept of `make links for refs with symlinks`
- breaks lots of other stuff

```
zet/20221003151420/README.md:find "$1" -name .git -type d | awk 'BEGIN {FS = OFS = "/" } { NF--;print }'

find zet -mindepth 1 -maxdepth 2 -type d | cut -d / -f 2

for id in $( implementation/getids ); do
  if [ -z "$id" ]; then continue; fi
  links="zet/$id/links"
  [ -d "$links" ] && rm -rf "$links"
  mkdir -p "$links"
  for l in $( implementation/quickrefs $id ); do
    ln -sr "zet/$l" "zet/$id/links/$l"
  done
done

```

` zet/20221028085630/README.md `

# Related

- [20221006032546](/zet/20221006032546/README.md) my original implementation of zet cmd
- [20221003150098](/zet/20221003150098/README.md) todo
- [20221012171100](/zet/20221012171100/README.md) recently created nodes hub

Tags:

    #idea
