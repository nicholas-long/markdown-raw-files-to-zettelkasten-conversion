## dirbusting
```bash
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/raft-large-directories.txt --hc 404 http://$IP/FUZZ/
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/raft-large-files.txt --hc 404 http://$IP/FUZZ
wfuzz -c -w ~/kb/wordlists/custom.dirbusting --hc 404 http://$IP/FUZZ
wfuzz -c -w /usr/share/seclists/Discovery/Web-Content/common.txt --hc 404 http://$IP/FUZZ/
```

