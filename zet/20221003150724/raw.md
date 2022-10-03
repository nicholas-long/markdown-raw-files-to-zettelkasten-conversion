# openssl pfx p12 file PKCS12

## view information about certificate
```bash
openssl pkcs12 -info -in $FILE
```

## public key fingerprint
```bash
openssl pkcs12 -info -in $FILE | openssl x509 -noout -fingerprint
```

## export pfx private key
```bash
# export private key
openssl pkcs12 -in certname.pfx -nocerts -out key.pem -nodes
# export certificate
openssl pkcs12 -in certname.pfx -nokeys -out cert.pem
```
