# bash scripting run strings on memory dumps for every readable process
~/kb/hacking/priv-esc/strings-all-memory.sh
```bash
#!/bin/bash

# run strings on memory dumps for every readable process

#https://serverfault.com/questions/173999/dump-a-linux-processs-memory-to-file
procdump()
(
    cat /proc/$1/maps | grep "rw-p" | awk '{print $1}' | ( IFS="-"
    while read a b; do
        dd if=/proc/$1/mem bs=$( getconf PAGESIZE ) iflag=skip_bytes,count_bytes \
           skip=$(( 0x$a )) count=$(( 0x$b - 0x$a )) of="$1_mem_$a.bin"
    done )
)

tf=$(mktemp)
rm $tf
mkdir $tf
cd $tf

find /proc -type f -readable 2>/dev/null \
  | grep '/proc/[[:digit:]]\+/mem' \
  | cut -d '/' -f 3 \
  | while read proc; do
      procdump $proc 2>/dev/null
    done

for f in $(ls); do
  strings $tf/$f
done

rm -rf $tf

```

~/kb/hacking/priv-esc/strings-all-memory.sh
` zet/20221003151375/README.md `

# Related

- [20221014185450](/zet/20221014185450/README.md) kb file named kb/auto-bash.md
- [20221003151424](/zet/20221003151424/README.md) bash scripts
- ~/kb/auto-bash.md

Tags:

    #bash #script 
