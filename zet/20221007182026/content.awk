#!/usr/bin/awk -f
NR == 1 { next }
/^# [Rr]elated/ { nextfile }
$0 !~ /^ *$/ { print }
