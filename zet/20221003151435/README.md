# awk scripting print nested markdown content within headings
~/kb/awk-scripting/print-markdown-content-nested-in-heading.awk
```awk
# print nested markdown content within headings
#argument: line
#awk -v line=205 -f print-markdown-content-nested-in-heading.md "$HOME/PayloadsAllTheThings/Methodology and Resources/Active Directory Attack.md"
/^#+ / { lastheading = length($1) } # save # of #s in heading
NR == line { 
  pr = 1
  h = lastheading
}
/^$/ && pr { printedblank=1 }
## stop when we reach heading of equal or greater importance (less #s)
!block && NR > line && /^#+ / && length($1) < h { pr = 0 }
## stop if we reach another heading of equal importance if we've printed at least one blank line
printedblank && !block && NR > line && /^#+ / && length($1) == h { pr = 0 }
/^ *```/ { block = !block } # toggle being inside a code block
pr == 1 { print }
```

~/kb/awk-scripting/print-markdown-content-nested-in-heading.awk
` zet/20221003151435/README.md `

# Related

- [20221014185509](/zet/20221014185509/README.md) kb file named kb/auto-awk.md
- [20221003151441](/zet/20221003151441/README.md) awk scripting
- ~/kb/auto-awk.md

Tags:

    #awk #script 
