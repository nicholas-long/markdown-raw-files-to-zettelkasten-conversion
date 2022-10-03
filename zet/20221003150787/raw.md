## convert certificate to PKCS12 format
```bash
openssl pkcs12 -export -inkey client.key -in client.cer -out client.p12
```
