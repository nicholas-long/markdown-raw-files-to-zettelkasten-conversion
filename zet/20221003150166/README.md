# dump process memory with dd ( complicated )
```bash
dd if=/proc/$1/mem bs=$( getconf PAGESIZE ) iflag=skip_bytes,count_bytes skip=$(( 0x$a )) count=$(( 0x$b - 0x$a )) of="$1_mem_$a.bin"
```

# Related

- [20221003150168](/zet/20221003150168/README.md) dump process memory
- ~/kb/linux/dump-process-memory.md

Tags:

    #linux #dump 
