# awk scripting autogenerate headings for source files
~/kb/awk-scripting/autogenerate-headings-for-source-files.awk
```awk
# autogenerate headings for source files
{
  file=$1
  gsub(/\.\//, "", file)
  heading=$3
  if (file in headings) headings[file] = headings[file] "\n"
  headings[file] = headings[file] "#" heading
}
END {
  for (file in headings) {
    print headings[file]
    print "~/kb/" file
    print "```" lang
    system("cat " file)
    print "```"
    print ""
    print "~/kb/" file
  }
}
```

~/kb/awk-scripting/autogenerate-headings-for-source-files.awk
` zet/20221003151428/README.md `

# Related

- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:

    #awk #script 
