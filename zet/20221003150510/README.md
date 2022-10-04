# pwn commands / tricks patchelf ld paths use custom ld version and library path
```
patchelf --set-interpreter ./lib64/ld-2.23.so --set-rpath ./lib64/ chapter2.patch
```

# References
- [20221003150511](/zet/20221003150511/README.md) pwn commands / tricks patchelf ld paths
- ~/kb/hacking/pwn/tricks.md

Tags:
    #assorted
