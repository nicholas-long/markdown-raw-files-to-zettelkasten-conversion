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
pythonscripting=20221003151363
bashscripting=20221003151424
./graphquery <(echo $awkscripting; echo $pythonscripting; echo $bashscripting) : @script --human

awkscripting=20221014185509
pythonscripting=20221003151363
bashscripting=20221003151424
./graphquery <(echo $awkscripting; echo $pythonscripting; echo $bashscripting) : @script | awk '
{
  fn = "zet/" $0 "/README.md"
  getline heading < fn
  getline kbfilename < fn
  print fn, kbfilename, heading
} '

zet/20221003151351/README.md ~/kb/python/decode-post-params.py # python scripting parse all post params from post content given on standard input
zet/20221003151352/README.md ~/kb/python/tsv-to-python-dict.py # python scripting convert tsv with key and value fields to python dictionary
zet/20221003151353/README.md ~/kb/hacking/tricks/python-fuzz-valid-dates.py # python scripting fuzz valid dates
zet/20221003151354/README.md ~/kb/hacking/windows/convert-msds-managed-password-to-ntlm-hash.py # python scripting convert a GMSA managed password structure to a NTLM hash
zet/20221003151355/README.md ~/kb/python/urlencode.py # python scripting read and process lines of input
zet/20221003151357/README.md ~/kb/python/get-url-params.py # python scripting parse all get parameters from a url
zet/20221003151358/README.md ~/kb/python/decode-cookies.py # python scripting parse a cookie from every line on standard input
zet/20221003151359/README.md ~/kb/python/convert-csv-to-tsv.py # python scripting convert CSV to TSV
zet/20221003151360/README.md ~/kb/hacking/pwn/boilerplate-pwn-script.py # python scripting connect to remote server
zet/20221003151364/README.md ~/kb/bash-scripting/get-bash-lines-from-kb-snippets.sh # bash scripting get bash lines from kb snippets
zet/20221003151365/README.md ~/kb/bash-scripting/urlencode.sh # bash scripting urlencode a line of text from stdin
zet/20221003151366/README.md ~/kb/linux/install_vscode.sh # bash scripting install vscode
zet/20221003151367/README.md ~/kb/bash-scripting/list-github-repos.sh # bash scripting list public github repositories for user
zet/20221003151368/README.md ~/kb/bash-scripting/nmap-get-top-ports.sh # bash scripting get top N most common ports from nmap list pass argument
zet/20221003151369/README.md ~/kb/linux/install_sublime.sh # bash scripting install sublimetext
zet/20221003151370/README.md ~/kb/hacking/tricks/get-versions-from-composer-lock-json.sh # bash scripting get library dependency versions from composer.lock json file
zet/20221003151372/README.md ~/kb/bash-scripting/string-to-hex.sh # bash scripting convert string to hex with no newlines
zet/20221003151373/README.md ~/kb/bash-scripting/sort-words-by-length.sh # bash scripting sort words by length
zet/20221003151374/README.md ~/kb/hacking/dockers/crackmapexec.sh # bash scripting build and run CrackMapExec docker
zet/20221003151375/README.md ~/kb/hacking/priv-esc/strings-all-memory.sh # bash scripting run strings on memory dumps for every readable process
zet/20221003151376/README.md ~/kb/bash-scripting/find-largest-files.sh # bash scripting get argument value or default
zet/20221003151378/README.md ~/kb/hacking/dockers/enum4linux-ng.sh # bash scripting build and run enum4linux-ng docker
zet/20221003151379/README.md ~/kb/linux/runneo4j.sh # bash scripting mount host neo4j data into docker
zet/20221003151381/README.md ~/kb/bash-scripting/get-random-unique-id.sh # bash scripting get random hex unique ID bash
zet/20221003151382/README.md ~/kb/bash-scripting/hash-git-repository.sh # bash scripting take only unique git hashes and do md5 hashes of those files
zet/20221003151385/README.md ~/kb/bash-scripting/loop-array-pull-git-repositories.sh # bash scripting loop over bash array
zet/20221003151387/README.md ~/kb/bash-scripting/generate-dates.sh # bash scripting generate ISO format dates wordlists for the last few years
zet/20221003151388/README.md ~/kb/bash-scripting/search-tldr-commands-text.sh # bash scripting search through tldr command descriptions with fzf and display file with bat
zet/20221003151389/README.md ~/kb/bash-scripting/copy-text-from-image-url.sh # bash scripting copy and read text from PNG image URL arg print with tesseract OCR
zet/20221003151390/README.md ~/kb/bash-scripting/get-wikipedia-info.sh # bash scripting get headings from wikipedia page
zet/20221003151391/README.md ~/kb/docker/build-github-repo-docker-image.sh # bash scripting clone github repository and build docker image with its name
zet/20221003151392/README.md ~/kb/bash-scripting/ubuntu-docker-build-environment.sh # bash scripting launch ubuntu build environment docker with current directory mounted as working directory
zet/20221003151393/README.md ~/kb/bash-scripting/watch-failed-ssh-logins-live-check-shodan.sh # bash scripting lookup unique hosts with shodan api
zet/20221003151395/README.md ~/kb/bash-scripting/get-github-api-key.sh # bash scripting get the current user's github api key
zet/20221003151396/README.md ~/kb/bash-scripting/exif-all-images.sh # bash scripting run exiftool on all of the images within a directory
zet/20221003151397/README.md ~/kb/bash-scripting/decorate-passwd-file.sh # bash scripting decorate and colorize a passwd file piped from stdin
zet/20221003151398/README.md ~/kb/hacking/dockers/impacket.sh # bash scripting build and run impacket docker
zet/20221003151399/README.md ~/kb/bash-scripting/find-alphanum-base64.sh # bash scripting find alphanumeric base64 using awk script
zet/20221003151400/README.md ~/kb/bash-scripting/update-all-git-repos.sh # bash scripting update all the git repos in home directory and prompt with lazygit
zet/20221003151401/README.md ~/kb/hacking/tricks/extract-pdf-embedded-file-stream.sh # bash scripting extract zlib stream between PDF stream and endstream with quick and dirty awk
zet/20221003151404/README.md ~/kb/bash-scripting/decorate-xml.sh # bash scripting decorate XML with colors for tags, attributes, and content
zet/20221003151405/README.md ~/kb/linux/alacritty-run-tmux.sh # bash scripting shortcut to start tmux session in a working directory with alacritty
zet/20221003151406/README.md ~/kb/hacking/cve/get-tsv.sh # bash scripting download the current CVE list get as Tab Separated Values
zet/20221003151407/README.md ~/kb/bash-scripting/pull-all-git-repos.sh # bash scripting pull all the git repos in home directory
zet/20221003151408/README.md ~/kb/hacking/scripts/copy-burp-request-as-python-script.sh # parse burpsuite saved request file and convert to python requests script for copying
zet/20221003151409/README.md ~/kb/bash-scripting/get-github-credentials.sh # bash scripting get the current user's github colon separated credentials
zet/20221003151410/README.md ~/kb/hacking/scripts/get-burp-http-saved-request.sh # bash scripting get raw HTTP request data from burp saved request
zet/20221003151411/README.md ~/kb/bash-scripting/docker-current-directory.sh # bash scripting run docker image with current directory mounted as working directory
zet/20221003151412/README.md ~/kb/linux/mount-shared-folders-in-vm.sh # bash scripting mount shared folders on VM
zet/20221003151413/README.md ~/kb/bash-scripting/colorize.sh # bash scripting colorize words from stdin with regular expressions
zet/20221003151414/README.md ~/kb/hacking/passwords/generate-common-passwords.sh # bash scripting generate common passwords
zet/20221003151415/README.md ~/kb/hacking/scripts/print-all-md5s.sh # bash scripting print the md5 hashes of all lines in a wordlist file
zet/20221003151416/README.md ~/kb/awk-scripting/nmap-ports.sh # bash scripting query nmap ports and service description definitions
zet/20221003151417/README.md ~/kb/bash-scripting/template.sh # bash scripting exit if parameter is missing
zet/20221003151419/README.md ~/kb/bash-scripting/get-current-ubuntu-distro.sh # bash scripting return the most recently updated ubuntu distro
zet/20221003151420/README.md ~/kb/bash-scripting/enum-git-repos-in-directory.sh # bash scripting remove git from directory name
zet/20221003151422/README.md ~/kb/bash-scripting/awk-print-unique-lines.sh # bash scripting use awk to print only unique lines as a stream processor
zet/20221003151423/README.md ~/kb/bash-scripting/urlencode-base64-every-line.sh # bash scripting urlencode and base64 encode lines individually
zet/20221003151425/README.md ~/kb/awk-scripting/get-http-post-content.awk # awk scripting get HTTP POST content from HTTP request stream
zet/20221003151426/README.md ~/kb/awk-scripting/live-combine.awk # awk scripting combine lines with all previous lines combinatorically
zet/20221003151427/README.md ~/kb/awk-scripting/snippet.awk # awk scripting awk print markdown snippet text between backtick lines
zet/20221003151428/README.md ~/kb/awk-scripting/autogenerate-headings-for-source-files.awk # awk scripting autogenerate headings for source files
zet/20221003151429/README.md ~/kb/awk-scripting/toggle-case-combinatoric.awk # awk scripting print all variations of upper and lower case for given lowercase string
zet/20221003151430/README.md ~/kb/awk-scripting/line-lengths.awk # awk scripting constrict line widths of input text stream
zet/20221003151432/README.md ~/kb/hacking/cve/relevant.awk # awk scripting filter the CVE list for potentially valid, relevant vulnerabilities
zet/20221003151433/README.md ~/kb/awk-scripting/combine-files.awk # awk scripting combine lines from two files combinatorically with symbol between
zet/20221003151434/README.md ~/kb/awk-scripting/get-columns.awk # awk scripting get column headings from first line of CSV
zet/20221003151435/README.md ~/kb/awk-scripting/print-markdown-content-nested-in-heading.awk # awk scripting print nested markdown content within headings
zet/20221003151436/README.md ~/kb/awk-scripting/space-invader.awk # awk scripting print all variations of spaces between tokens
zet/20221003151437/README.md ~/kb/awk-scripting/hydra-bruteforce-with-database.awk # awk scripting read and write a separated value file as a database
zet/20221003151439/README.md ~/kb/awk-scripting/base64-every-line.awk # awk scripting base64 encode lines individually
zet/20221003151440/README.md ~/kb/awk-scripting/colorize.awk # awk scripting replace words with colorized versions

```

` zet/20221020185927/README.md `

# Related

- [20221003151424](/zet/20221003151424/README.md) bash scripts
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
