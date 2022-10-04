#!/bin/bash
# zettel id is 14 chars
for zid in $(ls zet); do
  if [ -z $"zid" ]; then
    continue
  fi
  #get references
  cd zet/$zid
  cat README.md | awk '
  pr && /^#/ { exit }
  pr { print }
  /^# [Rr]eferences/ { pr = 1 }
  ' > references
  awk '
  /^- [0-9]{14} *$/ {
    id = $2
    "head -n 1 ../" id "/README.md" | getline heading
    gsub(/^# ?/,"",heading)
    print "- [" id "](/zet/" id "/README.md) " heading
    next
  }
  { print }
  ' references > references_enriched

  { awk '/^# [Rr]eferences/ { exit } { print }' README.md
  echo "# References"
  cat references_enriched
  } > README_enriched.md

  # overwrite
  mv README_enriched.md README.md

  cd - > /dev/null
done
