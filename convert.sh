#!/bin/bash

# assign uids to headings
#paste uidsbefore headings | awk 'NF > 1' |\
cat ids_names |\
  awk '
BEGIN {
  OFS = FS = "\t"
  script = "~/kb/awk-scripting/print-markdown-content-nested-in-heading.awk"
  kbdir = ENVIRON["HOME"] "/kb"
}
{
  id = $1
  file = $2
  line = $3
  rawheading = $4
  destdir = "zet/" id
  system("mkdir -p " destdir)

  destfile = destdir "/raw.md"
  command = "awk -v line=" line" -f " script " \047" kbdir "/" file "\047 > " destfile
  printf "%s\r", file
  system(command)

  destfile = destdir "/rawheading"
  print rawheading > destfile
  close(destfile)

  destfile = destdir "/rawfilename"
  print file > destfile
  close(destfile)

  destfile = destdir "/filedir"
  filedir = file
  gsub(/\/[^\/]+$/,"",filedir)
  print filedir > destfile
  close(destfile)
}
'

awk -f nest.awk ids_names

for z in $(ls zet/); do
  ./generate-content.sh $z > zet/$z/README.md
done

./enrich-references.sh # this should also be a pre-commit step or action
