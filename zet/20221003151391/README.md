# bash scripting clone github repository and build docker image with its name
~/kb/docker/build-github-repo-docker-image.sh
```bash
#!/bin/bash

# clone github repository and build docker image with its name
name=$(echo $repo | awk -F/ '{print $NF}')
imagename=$(echo $name | tr A-Z a-z)
echo "Building $name as $imagename"
git clone $repo
cd $name/
docker build . -t $imagename
cd -
rm -rf $name

docker run --rm $imagename --help
```

~/kb/docker/build-github-repo-docker-image.sh
# Related
- [20221003151424](/zet/20221003151424/README.md) bash scripting
- ~/kb/auto-bash.md

Tags:
    #assorted #bash #script
