# openssl and ssh view public key of a private key
```bash
openssl pkey -in $FILE -pubout
ssh-keygen -y -f $FILE
```

# Related


Tags:

    
