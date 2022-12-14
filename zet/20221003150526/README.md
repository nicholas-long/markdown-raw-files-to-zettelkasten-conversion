# pwn methodology / to try list
- strings
- system commands
  - injection
  - no path for shell commands -> privesc
- buffer overflow
  - executable stack -> find `jmp esp` or equivalent
  - NX -> ropchain
    - ropgadget
- format string
  - arbitrary read with `%s` refering to attacker controlled argument
  - index arguments with 
  - pwntools FmtStr
  - everything from arbitrary write -> ...
  - overwrite return address
  - write rop chain to get execution
- memory access
  - arbitrary write
    - overwrite function addresses in the global offset table
      - control argument -> point to system, easy RCE
    - write malloc hook in libc if program uses dynamic memory allocation
    - shellcode
    - libc hooks on close
    - function table
  - arbitrary read
    - leak libc addresses -> lookup in libc database
    - leak stack address with environ symbol in libc - points to enviornment vars which are at top of stack
- heap overflow
  - write function / vtable pointers to dynamically allocated objects right afterwards in memory
  - corrupt data or strings used elsewhere
- heap corruption - hard
  - identify correct type of house
  - patch to older libc version
    - heap exploit houses can get fixed in newer libc versions
- canaries enabled with overflow on a forking server -> brute force canaries

` zet/20221003150526/README.md `

# Related

- [20221003150527](/zet/20221003150527/README.md) generate reverse shell shellcode payload for pwn
- [20221015014643](/zet/20221015014643/README.md) overengineering and overthinking
- [20221003151175](/zet/20221003151175/README.md) EVERYTHING - common to try list
- [20221003150523](/zet/20221003150523/README.md) heap exploit resources
- [20221003150518](/zet/20221003150518/README.md) pwntools sigreturn
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221007044552](/zet/20221007044552/README.md) todo or to-try list
- [20221006215135](/zet/20221006215135/README.md) siren
- [20221003150520](/zet/20221003150520/README.md) x64 windows C style calling conventions
- [20221003150521](/zet/20221003150521/README.md) x64 linux C style calling conventions
- [20221003150536](/zet/20221003150536/README.md) immunity debugger mona commands list loaded modules and security flags
- [20221003150777](/zet/20221003150777/README.md) MSFVENOM

Tags:

    #to-try-list #hacking #pwn
