# bring in scripts from kb and update paths

- concept of `bring in scripts from kb and update paths`
- associate them with the `auto-*` generated markdown files
  - put the scripts in the zettels?

```
./graphquery id 20221014185509 : @script --human
- [20221003151425](/zet/20221003151425/README.md) awk scripting get HTTP POST content from HTTP request stream #awk #script 
- [20221003151426](/zet/20221003151426/README.md) awk scripting combine lines with all previous lines combinatorically #awk #script 
- [20221003151427](/zet/20221003151427/README.md) awk scripting awk print markdown snippet text between backtick lines #awk #script 
- [20221003151428](/zet/20221003151428/README.md) awk scripting autogenerate headings for source files #awk #script 
- [20221003151429](/zet/20221003151429/README.md) awk scripting print all variations of upper and lower case for given lowercase string #awk #script 
- [20221003151430](/zet/20221003151430/README.md) awk scripting constrict line widths of input text stream #awk #script 
- [20221003151432](/zet/20221003151432/README.md) awk scripting filter the CVE list for potentially valid, relevant vulnerabilities #awk #script 
- [20221003151433](/zet/20221003151433/README.md) awk scripting combine lines from two files combinatorically with symbol between #awk #script 
- [20221003151434](/zet/20221003151434/README.md) awk scripting get column headings from first line of CSV #awk #script 
- [20221003151435](/zet/20221003151435/README.md) awk scripting print nested markdown content within headings #awk #script 
- [20221003151436](/zet/20221003151436/README.md) awk scripting print all variations of spaces between tokens #awk #script 
- [20221003151437](/zet/20221003151437/README.md) awk scripting read and write a separated value file as a database #awk #script 
- [20221003151438](/zet/20221003151438/README.md) awk scripting attempt to reuse credentials using hydra and keep track of usernames and passwords tried #awk #script 
- [20221003151439](/zet/20221003151439/README.md) awk scripting base64 encode lines individually #awk #script 
- [20221003151440](/zet/20221003151440/README.md) awk scripting replace words with colorized versions #awk #script 
- [20221003151441](/zet/20221003151441/README.md) awk scripting #awk #script #example 

awkscripting=20221014185509

./graphquery id 20221014185509 : @script | awk '
{
  fn = "zet/" $0 "/README.md"
  getline heading < fn
  getline kbfilename < fn
  print fn, kbfilename, heading
} '

zet/20221003151425/README.md ~/kb/awk-scripting/get-http-post-content.awk
zet/20221003151426/README.md ~/kb/awk-scripting/live-combine.awk
zet/20221003151427/README.md ~/kb/awk-scripting/snippet.awk
zet/20221003151428/README.md ~/kb/awk-scripting/autogenerate-headings-for-source-files.awk
zet/20221003151429/README.md ~/kb/awk-scripting/toggle-case-combinatoric.awk
zet/20221003151430/README.md ~/kb/awk-scripting/line-lengths.awk
zet/20221003151432/README.md ~/kb/hacking/cve/relevant.awk
zet/20221003151433/README.md ~/kb/awk-scripting/combine-files.awk
zet/20221003151434/README.md ~/kb/awk-scripting/get-columns.awk
zet/20221003151435/README.md ~/kb/awk-scripting/print-markdown-content-nested-in-heading.awk
zet/20221003151436/README.md ~/kb/awk-scripting/space-invader.awk
zet/20221003151437/README.md ~/kb/awk-scripting/hydra-bruteforce-with-database.awk
zet/20221003151439/README.md ~/kb/awk-scripting/base64-every-line.awk
zet/20221003151440/README.md ~/kb/awk-scripting/colorize.awk

```

` zet/20221020185927/README.md `

# Related

- [20221003151441](/zet/20221003151441/README.md) awk scripting

- [20221003151363](/zet/20221003151363/README.md) python scripting

- [20221003151329](/zet/20221003151329/README.md) bash scripting

- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221020160107](/zet/20221020160107/README.md) zettels with kb script paths to fix
- [20221014190229](/zet/20221014190229/README.md) kb file named kb/auto-python.md
- [20221014185509](/zet/20221014185509/README.md) kb file named kb/auto-awk.md
- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221014183030](/zet/20221014183030/README.md) create cards for kb files

Tags:

    #idea
