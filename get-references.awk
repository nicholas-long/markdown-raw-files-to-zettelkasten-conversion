#!/usr/bin/awk -f
BEGIN {
  for (n = 1; n < ARGC; n++) {
    if (ARGV[n] ~ /^[0-9]+$/) {
      ARGV[n] = "zet/" ARGV[n] "/README.md"
    }
  }
}
BEGINFILE { refs = 0 }
refs && /^ *$/ { nextfile }
!files && refs && /^- +\[[0-9]+\]/ {
  gsub(/].*/,"", $2)
  gsub(/^\[/,"", $2)
  print $2
}
files && refs && $0 !~ /^- +\[[0-9]+\]/ {
  gsub(/^- +/,"")
  print
}
/^# [Rr]eferences/ { refs = 1 }
