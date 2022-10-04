#!/bin/bash

id=$1
cat zet/$id/rawheading | sed -e 's/##\+ //g' -e 's/^ \+//g' | awk '
/^#/ { print; next }
{ print "#", $0 }
'
cat zet/$id/raw_source | awk '
BEGIN { block = 0 }
/^$/ { printedblank = 1 }
/`{3}/ { block = !block }
NR == 1 { next }
NR > 1 && /^#+ / && !block {
  nextfile
  block = 0
}
{ print }
END { if (!printedblank) print "" }
'
echo "# Related"
echo ""
if [ -f zet/$id/refs ]; then
  ( cat zet/$id/refs && cat zet/$id/rawfilename | awk '{ print "~/kb/" $0}') | awk 'length() > 0 { print "-", $0 }'
fi
echo ""
echo "Tags:"
echo ""
echo "    #assorted"
