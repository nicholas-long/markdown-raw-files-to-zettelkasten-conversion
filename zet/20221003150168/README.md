# dump process memory on linux

- with exe pseudofile ( simple )
```bash
cp /proc/$1/exe /tmp/exe
```

- with dd ( complicated )
```bash
dd if=/proc/$1/mem bs=$( getconf PAGESIZE ) iflag=skip_bytes,count_bytes skip=$(( 0x$a )) count=$(( 0x$b - 0x$a )) of="$1_mem_$a.bin"
```

` zet/20221003150168/README.md `

# Related

- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221006025356](/zet/20221006025356/README.md) linux
- [20221014190151](/zet/20221014190151/README.md) kb file named kb/linux/dump-process-memory.md
- [20221003150167](/zet/20221003150167/README.md) dump process memory with exe pseudofile ( simple )
- [20221003150166](/zet/20221003150166/README.md) dump process memory with dd ( complicated )
- ~/kb/linux/dump-process-memory.md

Tags:

    #linux #dump #process #data #creds
