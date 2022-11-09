# create openssl client certificates from leaked CA private key

- example in ippsec video "LaCasaDePapel" <https://www.youtube.com/watch?v=OSRCEOQQJ4E>
- get certificate chain for site -> export x509 from firefox
- create a key
- create a certificate signing request
- sign certificate signing request
- convert the signed client certificate to PKCS12 to import to firefox
- import the ca certificate to firefox certificate store
  - make sure checkbox is checked in "edit trust"
- import PKCS12 certificate to firefox cettificate store
- if it doesn't work, clear history and everything and reimport certificates
- can add client certificate to burp in user options -> ssl

` zet/20221003150271/README.md `

# Related

- <https://www.youtube.com/watch?v=OSRCEOQQJ4E>
- [20221014190103](/zet/20221014190103/README.md) kb file named kb/hacking/misc/openssl-client-certificates.md
- [20221006214348](/zet/20221006214348/README.md) ippsec
- [20221011092421](/zet/20221011092421/README.md) hacking video notes
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221008215655](/zet/20221008215655/README.md) user account
- [20221003150791](/zet/20221003150791/README.md) openssl
- [20221003150789](/zet/20221003150789/README.md) openssl create certificate signing request

Tags:

    #hacking #crypto #web #users #cert
