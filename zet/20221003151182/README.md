# HTTP compromised CMS login
- service versions information -> exploit db
- file uploads
- user privileges - elevate
- code execution directly
- installs
- plugins/modules/extensions/addons/themes
  - upload with malicious backdoors
  - check if any installed plugins allow upload or exec
- downgrade attack - backdoor, plugin, revert to vulnerable version
- edit some extension or functionality
  - plant executable code
- diagnostic tools -> RCE?
- schedule system level jobs
- administration
  - access to sensitive database credentials
  - backups
  - database dumps
  - modify or downgrade access control lists
  - world writable directories
- assess the functionality provided to it and seeing if we can abuse it

` zet/20221003151182/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes node
- [20221003151193](/zet/20221003151193/README.md) HTTP
- [20221003151181](/zet/20221003151181/README.md) HTTP compromised CMS login CMS auth code exec / becoming web user
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:

    #to-try-list #hacking #http 
