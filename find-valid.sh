#!/bin/bash

find zet -name raw.md | xargs ~/kb/awk-scripting/get-headings.awk | awk '
seen[$1] { dead[$1] = 1 }
{ seen[$1] = 1 }
END {
  for (fn in seen ) if (!dead[fn]) print fn
}
'
