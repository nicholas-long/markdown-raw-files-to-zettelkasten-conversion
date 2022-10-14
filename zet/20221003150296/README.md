# fixing golang module errors no required module provides package
try to run commands to init a module.
```bash
go mod init whatever
go run file.go
# still errors, but now suggests "go get" and that will actually work
go get golang.org/x/crypto/pbkdf2
go run file.go
```

` zet/20221003150296/README.md `

# Related

- [20221014190056](/zet/20221014190056/README.md) kb file named kb/hacking/misc/assorted-information.md
- [20221003150299](/zet/20221003150299/README.md) fixing golang module errors
- ~/kb/hacking/misc/assorted-information.md

Tags:

    #hacking #assorted 
