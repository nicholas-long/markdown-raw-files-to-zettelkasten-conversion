## initial
### all plugins passive scan
### vulnerable themes
### config backups
### database exports
### enumerate user id range
```bash
wpscan --url $URL -e ap,vt,cb,dbe,u1-10
```

### aggressive plugins-detection
```bash
wpscan --url $URL -e ap --plugins-detection aggressive
```

