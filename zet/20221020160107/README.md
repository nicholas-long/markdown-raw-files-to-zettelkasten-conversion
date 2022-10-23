# zettels with kb script paths to fix

- concept of `zettels with kb script paths to fix`

```
grep -R 'kb/' zet
# do some magic to filter

zet/20221003150082/README.md:~/kb/linux/setup_aliases.sh
zet/20221003150083/README.md:~/kb/linux/package-it-all.sh
zet/20221003150084/README.md:~/kb/linux/oracle.sh
zet/20221003150085/README.md:~/kb/linux/named-pipe-to-netcat.sh
zet/20221003150086/README.md:~/kb/linux/java8.sh
zet/20221003150087/README.md:~/kb/linux/getip.sh
zet/20221003150088/README.md:~/kb/linux/get-ip-tmux.sh
zet/20221003150089/README.md:~/kb/hacking/test-vuln-in-dockers/ubuntu-reverse-shell/run-docker-catch-rev-shell.sh
zet/20221003150090/README.md:~/kb/hacking/test-vuln-in-dockers/ubuntu-reverse-shell-user-feature-test/run-docker-catch-rev-shell.sh
zet/20221003150091/README.md:~/kb/docker/templates/ubuntu-dockerfile-template.sh
zet/20221003150092/README.md:~/kb/docker/get-tags.sh
zet/20221003150093/README.md:~/kb/docker/destroy-containers-and-images.sh
zet/20221003150094/README.md:~/kb/awk-scripting/nmap-script-types.sh
zet/20221003150095/README.md:~/kb/autogenerate-all-languages.sh
zet/20221003150658/README.md:wfuzz -c -w ~/kb/wordlists/custom.dirbusting --hc 404 http://$IP/FUZZ
zet/20221003150719/README.md:for p in $(~/kb/bash-scripting/nmap-get-top-ports.sh 20); do
zet/20221003150738/README.md:feroxbuster --url $URL -w ~/kb/wordlists/custom.dirbusting
zet/20221003150846/README.md:gobuster dir -e -t 50 -u $URL -w ~/kb/wordlists/custom.dirbusting
zet/20221003150877/README.md:cp ~/kb/hacking/priv-esc/c0w.c .
zet/20221003150880/README.md:- expoit at ~/kb/hacking/priv-esc/polkit-pkexec-CVE-2021-4034
zet/20221003151016/README.md:~/kb/awk-scripting/nmap-script-types.sh | awk -F: '$2 ~ /vuln/'
zet/20221003151017/README.md:~/kb/awk-scripting/nmap-script-types.sh | awk -F: '$2 ~ /vuln/'
zet/20221003151063/README.md:~/kb/hacking/windows/uacbypass/fodhelper.ps1
zet/20221003151133/README.md:~/kb/hacking/windows/convert-msds-managed-password-to-ntlm-hash.py
zet/20221003151186/README.md:  - ~/kb/wordlists/custom.dirbusting custom wordlist includes API endpoints words
zet/20221003151190/README.md:~/kb/wordlists/custom.dirbusting
zet/20221003151233/README.md:prepare payload as plain hex with no newlines with ~/kb/bash-scripting/string-to-hex.sh
zet/20221003151351/README.md:~/kb/python/decode-post-params.py
zet/20221003151352/README.md:~/kb/python/tsv-to-python-dict.py
zet/20221003151353/README.md:~/kb/hacking/tricks/python-fuzz-valid-dates.py
zet/20221003151354/README.md:~/kb/hacking/windows/convert-msds-managed-password-to-ntlm-hash.py
zet/20221003151355/README.md:~/kb/python/urlencode.py
zet/20221003151357/README.md:~/kb/python/get-url-params.py
zet/20221003151358/README.md:~/kb/python/decode-cookies.py
zet/20221003151359/README.md:~/kb/python/convert-csv-to-tsv.py
zet/20221003151360/README.md:~/kb/hacking/pwn/boilerplate-pwn-script.py
zet/20221003151364/README.md:~/kb/bash-scripting/get-bash-lines-from-kb-snippets.sh
zet/20221003151365/README.md:~/kb/bash-scripting/urlencode.sh
zet/20221003151366/README.md:~/kb/linux/install_vscode.sh
zet/20221003151367/README.md:~/kb/bash-scripting/list-github-repos.sh
zet/20221003151368/README.md:~/kb/bash-scripting/nmap-get-top-ports.sh
zet/20221003151369/README.md:~/kb/linux/install_sublime.sh
zet/20221003151370/README.md:~/kb/hacking/tricks/get-versions-from-composer-lock-json.sh
zet/20221003151371/README.md:~/kb/bash-scripting/git-file-modification-date.sh
zet/20221003151372/README.md:~/kb/bash-scripting/string-to-hex.sh
zet/20221003151373/README.md:~/kb/bash-scripting/sort-words-by-length.sh
zet/20221003151374/README.md:source ~/kb/docker/build-github-repo-docker-image.sh
zet/20221003151374/README.md:~/kb/hacking/dockers/crackmapexec.sh
zet/20221003151375/README.md:~/kb/hacking/priv-esc/strings-all-memory.sh
zet/20221003151376/README.md:~/kb/bash-scripting/find-largest-files.sh
zet/20221003151378/README.md:source ~/kb/docker/build-github-repo-docker-image.sh
zet/20221003151378/README.md:~/kb/hacking/dockers/enum4linux-ng.sh
zet/20221003151379/README.md:~/kb/linux/runneo4j.sh
zet/20221003151381/README.md:~/kb/bash-scripting/get-random-unique-id.sh
zet/20221003151382/README.md:~/kb/bash-scripting/hash-git-repository.sh
zet/20221003151385/README.md:~/kb/bash-scripting/loop-array-pull-git-repositories.sh
zet/20221003151387/README.md:~/kb/bash-scripting/generate-dates.sh
zet/20221003151388/README.md:~/kb/bash-scripting/search-tldr-commands-text.sh
zet/20221003151389/README.md:~/kb/bash-scripting/copy-text-from-image-url.sh
zet/20221003151390/README.md:~/kb/bash-scripting/get-wikipedia-info.sh
zet/20221003151391/README.md:~/kb/docker/build-github-repo-docker-image.sh
zet/20221003151392/README.md:  export tag=$(~/kb/docker/get-tags.sh ubuntu | fzf --prompt="select tag")
zet/20221003151392/README.md:~/kb/bash-scripting/ubuntu-docker-build-environment.sh
zet/20221003151392/README.md:~/kb/docker/templates/ubuntu-dockerfile-template.sh $tag > Dockerfile 
zet/20221003151393/README.md:~/kb/bash-scripting/watch-failed-ssh-logins-live-check-shodan.sh
zet/20221003151395/README.md:~/kb/bash-scripting/get-github-api-key.sh
zet/20221003151396/README.md:~/kb/bash-scripting/exif-all-images.sh
zet/20221003151397/README.md:~/kb/bash-scripting/colorize.sh -y '^.*sh$' -c '^[^:]+' -r root -g '[^:/]+$' -b 'false|nologin'
zet/20221003151397/README.md:~/kb/bash-scripting/decorate-passwd-file.sh
zet/20221003151398/README.md:source ~/kb/docker/build-github-repo-docker-image.sh
zet/20221003151398/README.md:~/kb/hacking/dockers/impacket.sh
zet/20221003151399/README.md:echo "$1" | ~/kb/awk-scripting/space-invader.awk | while read line; do
zet/20221003151399/README.md:~/kb/bash-scripting/find-alphanum-base64.sh
zet/20221003151400/README.md:~/kb/bash-scripting/enum-git-repos-in-directory.sh $HOME |\
zet/20221003151400/README.md:~/kb/bash-scripting/update-all-git-repos.sh
zet/20221003151401/README.md:~/kb/hacking/tricks/extract-pdf-embedded-file-stream.sh
zet/20221003151404/README.md:~/kb/bash-scripting/colorize.sh -g '>[^<]+<' -c '\[[^]]+' -r CDATA -y '<[^>]+ [^>]*>'
zet/20221003151404/README.md:~/kb/bash-scripting/decorate-xml.sh
zet/20221003151405/README.md:~/kb/linux/alacritty-run-tmux.sh
zet/20221003151406/README.md:  ~/kb/python/convert-csv-to-tsv.py | \
zet/20221003151406/README.md:~/kb/hacking/cve/get-tsv.sh
zet/20221003151407/README.md:~/kb/bash-scripting/enum-git-repos-in-directory.sh $HOME |\
zet/20221003151407/README.md:~/kb/bash-scripting/pull-all-git-repos.sh
zet/20221003151408/README.md:    postdata=$(~/kb/awk-scripting/get-http-post-content.awk $http_request | ~/kb/python/decode-post-params.py)
zet/20221003151408/README.md:  ' $http_request | ~/kb/python/tsv-to-python-dict.py
zet/20221003151408/README.md:' $http_request | ~/kb/python/decode-cookies.py)
zet/20221003151408/README.md:getparams=$(echo $url | ~/kb/python/get-url-params.py)
zet/20221003151408/README.md:~/kb/hacking/scripts/copy-burp-request-as-python-script.sh
zet/20221003151409/README.md:~/kb/bash-scripting/get-github-credentials.sh
zet/20221003151410/README.md:~/kb/hacking/scripts/get-burp-http-saved-request.sh
zet/20221003151411/README.md:~/kb/bash-scripting/docker-current-directory.sh
zet/20221003151412/README.md:~/kb/linux/mount-shared-folders-in-vm.sh
zet/20221003151413/README.md:~/kb/bash-scripting/colorize.sh
zet/20221003151414/README.md:~/kb/hacking/passwords/generate-common-passwords.sh
zet/20221003151415/README.md:~/kb/hacking/scripts/print-all-md5s.sh
zet/20221003151416/README.md:~/kb/awk-scripting/nmap-ports.sh
zet/20221003151417/README.md:~/kb/bash-scripting/template.sh
zet/20221003151419/README.md:~/kb/bash-scripting/get-current-ubuntu-distro.sh
zet/20221003151420/README.md:~/kb/bash-scripting/enum-git-repos-in-directory.sh
zet/20221003151422/README.md:~/kb/bash-scripting/awk-print-unique-lines.sh
zet/20221003151423/README.md:~/kb/bash-scripting/urlencode-base64-every-line.sh
zet/20221003151425/README.md:~/kb/awk-scripting/get-http-post-content.awk
zet/20221003151426/README.md:~/kb/awk-scripting/live-combine.awk
zet/20221003151427/README.md:~/kb/awk-scripting/snippet.awk
zet/20221003151428/README.md:~/kb/awk-scripting/autogenerate-headings-for-source-files.awk
zet/20221003151429/README.md:~/kb/awk-scripting/toggle-case-combinatoric.awk
zet/20221003151430/README.md:~/kb/awk-scripting/line-lengths.awk
zet/20221003151431/README.md:~/kb/awk-scripting/file-grep-multi-lines.awk
zet/20221003151432/README.md:~/kb/hacking/cve/relevant.awk
zet/20221003151433/README.md:~/kb/awk-scripting/combine-files.awk
zet/20221003151434/README.md:~/kb/awk-scripting/get-columns.awk
zet/20221003151435/README.md:~/kb/awk-scripting/print-markdown-content-nested-in-heading.awk
zet/20221003151436/README.md:~/kb/awk-scripting/space-invader.awk
zet/20221003151437/README.md:~/kb/awk-scripting/hydra-bruteforce-with-database.awk
zet/20221003151439/README.md:~/kb/awk-scripting/base64-every-line.awk
zet/20221003151440/README.md:~/kb/awk-scripting/colorize.awk
zet/20221006054727/README.md:- https://github.com/nicholas-long/kb/blob/main/bash-scripting/git-file-modification-date.sh
zet/20221006054727/README.md:└─$ find . -type f -name '*.md' | xargs /home/kali/kb/bash-scripting/git-file-modification-date.sh | tee filemodoutput
zet/20221011134623/README.md:- https://github.com/nicholas-long/kb/tree/main/hacking/notes-template

```

` zet/20221020160107/README.md `

# Related

- [20221020185927](/zet/20221020185927/README.md) bring in scripts from kb and update paths
- [20221008042814](/zet/20221008042814/README.md) WIP
- [20221013035124](/zet/20221013035124/README.md) problems with markdown conversion process
- [20221006013612](/zet/20221006013612/README.md) markdown to zettelkasten conversion project
- [20221003151017](/zet/20221003151017/README.md) nmap scripts

Tags:

    #idea
