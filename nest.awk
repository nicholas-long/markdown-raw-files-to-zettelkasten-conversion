#!/usr/bin/awk -f

BEGIN {
  OFS = FS = "\t"
}
function addref(a,b) {
  if (a == "" || b == "") {
    print "PROBLEM with refs", a, b
    return
  }
  print a >> "zet/" b "/refs"
  print b >> "zet/" a "/refs"
  close("zet/" b "/refs")
  close("zet/" a "/refs")
}
{ # common
  id = $1
  heading = $4
  file = $2
}
/##/ { #nested headings
  main = heading
  gsub(/ ##* [^#]*$/,"",main)
  gsub(/ *$/,"",main)
  gsub(/^ */,"",main)
  print id, file, heading, ids[main], main
  addref(id, ids[main])
}
{ #main headings
  gsub(/ *$/,"",heading)
  gsub(/^ */,"",heading)
  ids[heading] = id
}
