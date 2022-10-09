# bash scripting run docker image with current directory mounted as working directory
~/kb/bash-scripting/docker-current-directory.sh
```bash
#!/bin/bash
# run docker image with current directory mounted as working directory
sudo docker run --rm -it -v "$(pwd):$(pwd)" -w "$(pwd)" $1
```

~/kb/bash-scripting/docker-current-directory.sh
` zet/20221003151411/README.md `

# Related

- [20221009015558](/zet/20221009015558/README.md) docker
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
