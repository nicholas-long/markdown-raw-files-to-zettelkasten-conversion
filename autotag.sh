#!/bin/bash

awk '
{
  id = $1
  split($2,arr,"/")
  for (n = 1; n < length(arr);n++) {
    print n, arr[n]
  }
}
function addtag(tag) {
  if (tag == "") {
    print "INVALID TAG"
    return
  }
  system("./add-tag.sh -t " tag " " id " > /dev/null")
}
$2 ~ /auto/ { # add language keywords to autogenerated content from scripts
  lang = $2
  gsub(/^.*auto-/,"",lang)
  gsub(/\.md$/,"",lang)
  addtag(lang)
  addtag("script")
  next
}
$2 ~ /command/ { addtag("command") }
$2 ~ /to-try-list/ { addtag("to-try-list") }
$2 ~ /kb\/.*\// { addtag(arr[3]) } # add the first directory name
$2 ~ /priv-esc/ || $2 ~ /privesc/ { addtag("privesc") }
$2 ~ /tricks/ { addtag("trick") }
$2 ~ /windows/ { addtag("windows") }
$2 ~ /buzzwords/ { addtag("buzzwords") }
$2 ~ /pwn/ { addtag("pwn") }
$2 ~ /repositories/ { addtag("repositories") }
{
  fn = arr[length(arr)]
  gsub(/\.md$/,"",fn)
  gsub(/-.*$/,"",fn)
  addtag(fn)
}
' zet_to_source_file
