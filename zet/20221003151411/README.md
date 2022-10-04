# bash scripting run docker image with current directory mounted as working directory
~/kb/bash-scripting/docker-current-directory.sh
```bash
#!/bin/bash
# run docker image with current directory mounted as working directory
sudo docker run --rm -it -v "$(pwd):$(pwd)" -w "$(pwd)" $1
```

~/kb/bash-scripting/docker-current-directory.sh
# References
- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted #bash #script
