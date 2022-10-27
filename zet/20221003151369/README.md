# bash scripting install sublimetext
~/kb/linux/install_sublime.sh
```bash
#!/bin/bash

# install sublimetext
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

```

~/kb/linux/install_sublime.sh
` zet/20221003151369/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221013194055](/zet/20221013194055/README.md) concept of installing something
- [20221003151274](/zet/20221003151274/README.md) install mandown
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script #install #program #text #editor
