## dirbusting
```bash
export URL='http://$IP/'
feroxbuster --url $URL -w /usr/share/seclists/Discovery/Web-Content/common.txt
feroxbuster --url $URL -w /usr/share/seclists/Discovery/Web-Content/raft-medium-directories.txt

# custom list
feroxbuster --url $URL -w ~/kb/wordlists/custom.dirbusting
```

### common with arguments
add slash with `-f`.
collect links with `-e`.
add words to wordlist with `-g`
```bash
feroxbuster --url http://$IP/ -w /usr/share/seclists/Discovery/Web-Content/common.txt
feroxbuster --url http://$IP/ -w /usr/share/seclists/Discovery/Web-Content/common.txt -f
feroxbuster --url http://$IP/ -w /usr/share/seclists/Discovery/Web-Content/common.txt -g -e -f
```

### big buster
```bash
feroxbuster --url http://$IP/ -w /usr/share/seclists/Discovery/Web-Content/directory-list-2.3-big.txt -x php,txt,log
```

