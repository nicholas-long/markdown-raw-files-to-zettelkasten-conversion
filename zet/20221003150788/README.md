# openssl sign a certificate signing request with the private key of a CA certificate authority
```bash
openssl x509 -req -in client.csr -CA ca.crt -CAkey ca.key -set_serial 9001 -extensions client -days 9002 -outform PEM -out client.cer
```
ca.crt is the certificate chain exported from firefox
ca.key is private key of a CA that has been leaked
client.csr is the certificate signing request

` zet/20221003150788/README.md `

# Related

- [20221014185857](/zet/20221014185857/README.md) kb file named kb/hacking/commands/openssl-general.md
- [20221003150791](/zet/20221003150791/README.md) openssl
- ~/kb/hacking/commands/openssl-general.md

Tags:

    #command #hacking #openssl 
