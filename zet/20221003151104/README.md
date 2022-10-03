# compile windows DLL to run commands DLL code building with mingw
builds x64. install i686 mingw packages to build x86.
```bash
x86_64-w64-mingw32-g++ -shared dll.cpp -o dll.dll
file dll.dll
dll.dll: PE32+ executable (DLL) (console) x86-64, for MS Windows
```

# References
- [20221003151105](/zet/20221003151105/) compile windows DLL to run commands DLL code
- ~/kb/hacking/windows/dll-to-run-commands.md

Tags:
    #assorted

