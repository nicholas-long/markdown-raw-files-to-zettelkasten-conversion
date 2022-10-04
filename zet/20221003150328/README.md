# compile windows c++ binaries on linux
```bash
sudo apt install mingw-w64
# build 32 bit windows DLL on linux and link winsock
x86_64-w64-mingw32-g++ rev.c -o rev.dll -lws2_32 -shared
```

# Related


Tags:

    #assorted
