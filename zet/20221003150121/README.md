# routing using a linux box add router to routes on hosts windows
192.168.1.69 is the router?
this forwards 10.10.10.0/24 through 192.168.1.69
```dos
route add 10.10.10.10 mask 255.255.255.0 192.168.1.69
route print
```

` zet/20221003150121/README.md `

# Related

- [20221003150122](/zet/20221003150122/README.md) routing using a linux box add router to routes on hosts
- ~/kb/linux/routing.md

Tags:

    #linux #routing 
