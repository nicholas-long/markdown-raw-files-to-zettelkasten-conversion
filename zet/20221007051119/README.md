# zet cmd enrich process

- arguments - none
- temp files -> zettel dir
  - `references`
  - `references_enriched`
  - `README_enriched.md`
- uses inline awk scripts
- references
  - updateref action ( in same script, recursive processes )
    TODO: fix
- steps in the enrich process
  - tags
  - related backlinks
  - converting plain IDs in list to fully-fleshed-out markdown zettel links
  - repeat if related backlinks were added

```bash
case $action in
  # ... snip ...
  enrich)
    for zid in $(ls zet); do
      if [ -z $"zid" ]; then
        continue
      fi
      #get references
      cd zet/$zid
      cat README.md | awk '
      pr && /^#/ { exit }
      pr { print }
      /^# [Rr]elated/ { pr = 1 }
      ' > references
      awk '
      BEGIN { seen[""] = 0 }
      BEGINFILE { delete seen ; seen[""] = 0 }
      /^- [0-9]{14} *$/ {
        id = $2
        if (seen[id]) { next }
        seen[id] = 1
        "head -n 1 ../" id "/README.md" | getline heading
        gsub(/^# ?/,"",heading)
        if (system("test -f ../" id "/README.md") == 0) {
          print "- [" id "](/zet/" id "/README.md) " heading
        }
        next
      }
      /^- \[[0-9]{14}\]/ { # parse and reprint pretty references
        temp = $0
        gsub(/^- \[/, "", temp)
        gsub(/].*$/,"", temp)
        id = temp
        if (seen[id]) { next }
        seen[id] = 1
        "head -n 1 ../" id "/README.md" | getline heading
        gsub(/^# ?/,"",heading)
        if (system("test -f ../" id "/README.md") == 0) {
          print "- [" id "](/zet/" id "/README.md) " heading
        }
        next
      }
      { print }
      ' references > references_enriched

      { awk '/^# [Rr]elated/ { exit } { print }' README.md
      echo "# Related"
      cat references_enriched
      } > README_enriched.md

      # overwrite
      mv README_enriched.md README.md
      rm references
      rm references_enriched

      cd - > /dev/null
    done
    # get all tags
    tail -n 1 zet/*/README.md | awk '/^    #/' | sed -e 's/^    //g' -e 's/ /\n/g' | sort -u > all_tags
    # index tags
    rm -rf tagindex
    mkdir -p tagindex

    for t in $(cat all_tags); do
      echo "${t//#/#\ }"
      find zet -name README.md | \
        xargs grep -R "$t " | \
        sed -e 's/:.*//' -e 's/.*/\[\](\/&)/' | \
        awk -F / '
        {
          gsub(/\[\]/,"[" $3 "]")
          print "-", $0
        }
        '
      echo ""
    done | awk '
      BEGIN {
        ignore["assorted"] = 1
      }
      /^#/ {
        tag = $2
        if (fn) close(fn)
        fn = "tagindex/" tag ".md"
      }
      !( ignore[tag] ) { print > fn }
    '
    $0 updateref
    ;;
esac
```

` zet/20221007051119/README.md `

# Related

- [20221008214406](/zet/20221008214406/README.md) sharing programming projects with zettelkasten
- [20221009091132](/zet/20221009091132/README.md) new links should come in at the bottom
- [20221007175034](/zet/20221007175034/README.md) optimizations for enrichment process
- [20221007062330](/zet/20221007062330/README.md) broken stuff to fix
- [20221006032933](/zet/20221006032933/README.md) problems / issues with zet cmd
- [20221006032546](/zet/20221006032546/README.md) my implementation of zet cmd
- [20221006141216](/zet/20221006141216/README.md) weird issue with enrich

Tags:

    #bash #zettelkasten 
