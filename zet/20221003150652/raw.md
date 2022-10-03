## host header pollution
```bash
wfuzz -c -u $URL -w /usr/share/seclists/Discovery/DNS/namelist.txt -H "Host: FUZZ" --hc 403
wfuzz -c -u $URL -w /usr/share/seclists/Discovery/DNS/fierce-hostlist.txt -H "Host: FUZZ" --hc 403
```
