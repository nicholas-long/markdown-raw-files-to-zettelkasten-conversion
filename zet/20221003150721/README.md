# openssl pfx p12 file PKCS12 export pfx private key
```bash
# export private key
openssl pkcs12 -in certname.pfx -nocerts -out key.pem -nodes
# export certificate
openssl pkcs12 -in certname.pfx -nokeys -out cert.pem
```

` zet/20221003150721/README.md `

# Related

- [20221007220451](/zet/20221007220451/README.md) hacking notes node

- [20221003150724](/zet/20221003150724/README.md) openssl pfx p12 file PKCS12
- ~/kb/hacking/commands/openssl-view-information-about-cert.md

Tags:

    #command #hacking #openssl 
