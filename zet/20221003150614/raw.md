# smbclient shell
## recursive list directory
```
recurse
dir
```

## recursive get all files
```
recurse on
prompt off
mget *
```
```bash
smbclient //$IP/share -U username%password -c "prompt OFF;recurse ON;mget *"
```

