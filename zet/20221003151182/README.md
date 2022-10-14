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

- [20221014185619](/zet/20221014185619/README.md) kb file named kb/hacking/to-try-lists/HTTP.md
- [20221013180230](/zet/20221013180230/README.md) session cookie or access token
- [20221003150436](/zet/20221003150436/README.md) webshells for all sorts of languages
- [20221003151192](/zet/20221003151192/README.md) HTTP TRY
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003151193](/zet/20221003151193/README.md) HTTP
- [20221003151181](/zet/20221003151181/README.md) HTTP compromised CMS login CMS auth code exec / becoming web user
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:

    #to-try-list #hacking #http 
