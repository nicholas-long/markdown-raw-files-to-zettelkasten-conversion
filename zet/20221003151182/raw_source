## compromised CMS login
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

### CMS auth code exec / becoming web user
- drupal
  - "extend" "install new module"
  - install drupal project php https://www.drupal.org/project/php and enable the module
    - alternatively built in module `PHP Filter` allows editing php
  - content > add content > basic page
    - edit in source view and set text type at bottom to php code
- wordpress -> edit plugins or themes to install web shell

