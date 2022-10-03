## connect to database
```bash
psql -U username -d database_name
```

### using file socket
```bash
psql -h /var/opt/gitlab/postgresql -U gitlab gitlabhq_production
```
