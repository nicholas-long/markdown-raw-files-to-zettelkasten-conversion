#!/bin/bash

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
