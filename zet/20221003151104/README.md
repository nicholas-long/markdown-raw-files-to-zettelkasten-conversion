# compile windows DLL to run commands DLL code building with mingw
builds x64. install i686 mingw packages to build x86.
```bash
x86_64-w64-mingw32-g++ -shared dll.cpp -o dll.dll
file dll.dll
dll.dll: PE32+ executable (DLL) (console) x86-64, for MS Windows
```

` zet/20221003151104/README.md `

# Related

- [20221008194048](/zet/20221008194048/README.md) good DLLs to hide in for sideloading
- [20221003151105](/zet/20221003151105/README.md) compile windows DLL to run commands DLL code
- ~/kb/hacking/windows/dll-to-run-commands.md

Tags:

    #command #hacking #windows #dll 
