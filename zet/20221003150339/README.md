# ansible How does Ansible work?
- YAML config files
- `Playbooks`   An ordered list of tasks along with its necessary parameters that define a recipe to configure a system.
- `Host`        A remote machine managed by Ansible.
- `Group`       Several hosts grouped together that share a common attribute.
- `Inventory`   A collection of all the hosts and groups that Ansible manages.
Could be a static file in the simple cases or we can pull the inventory from remote sources, such as cloud providers.
- `Modules`     Units of code that Ansible sends to the remote nodes for execution.
- `Tasks`       Units of action that combine a module and its arguments along with some other parameters.
- `Roles`       Redistributable units of organization that allow users to share automation code easier.

Ansible uses the concepts of control and managed nodes.
It connects from the control node, any machine with Ansible installed, to the managed nodes sending commands and instructions to them.
The units of code that Ansible executes on the managed nodes are called modules.
Each module is invoked by a task, and an ordered list of tasks together forms a playbook.
Users write playbooks with tasks and modules to define the desired state of the system.
https://spacelift.io/blog/ansible-tutorial

` zet/20221003150339/README.md `

# Related

- [20221014190054](/zet/20221014190054/README.md) kb file named kb/hacking/misc/ansible.md
- [20221010074318](/zet/20221010074318/README.md) engineer the workflow, not the product
- [20221003150340](/zet/20221003150340/README.md) ansible
- ~/kb/hacking/misc/ansible.md

Tags:

    #hacking #ansible 
