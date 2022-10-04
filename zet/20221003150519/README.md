# calling conventions x64 windows C style  volatile registers after call
`RCX, RDX, R8, R9, RAX, R10, R11, XMM4, XMM5`
Floating point arguments `XMM0L, XMM1L, XMM2L, and XMM3L.`
These registers are considered volatile, or potentially changed by a callee on return.

# Related

- [20221003150520](/zet/20221003150520/README.md) calling conventions x64 windows C style
- ~/kb/hacking/pwn/calling-conventions.md

Tags:

    #hacking #pwn #calling 
