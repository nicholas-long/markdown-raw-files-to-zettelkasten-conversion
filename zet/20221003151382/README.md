# bash scripting take only unique git hashes and do md5 hashes of those files
~/kb/bash-scripting/hash-git-repository.sh
```bash
#!/bin/bash

function walk_tree {
  tag=$2
  path=$3
  git cat-file -p $1 | \
    while read asdf tp hash file; do
      [ $tp = "tree" ] && walk_tree $hash $tag "$path/$file" # recursion
      [ $tp = "blob" ] && printf "$hash\t$tag\t$path/$file\r\n"
    done
}

function walk_commit {
  tag=$2
  git cat-file -p $1 | head -n 2 | grep tree | awk '{print $2}' | while read tree; do walk_tree $tree $tag ""; done
}

function walk_commits_tags {
  while read commit tag; do
    walk_commit $commit $tag
  done
}

# clone repo into temp dir
tf=$(mktemp)
rm $tf && mkdir $tf
git clone --mirror https://github.com/facebook/folly $tf
rm /tmp/hash_list 2>/dev/null
cd $tf

# get all tags and start walking their commits
cat packed-refs | grep refs/tags/ | walk_commits_tags > /tmp/hash_list

# take only unique git hashes and do md5 hashes of those files
cat /tmp/hash_list | awk -F "\t" '{print $1}' | sort -u | \
  while read githash; do
    echo $githash
    git cat-file -p $githash | md5sum | awk '{print $1}'
  done | paste - -

rm -rf $tf
```

~/kb/bash-scripting/hash-git-repository.sh
` zet/20221003151382/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221010064819](/zet/20221010064819/README.md) locating the origin of files by hash to determine version
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md
- [20221003151383](/zet/20221003151383/README.md) bash scripting get all tags and start walking their commits
- [20221003151384](/zet/20221003151384/README.md) bash scripting clone repo into temp dir

Tags:

    #bash #script #hash #git #file #trick
