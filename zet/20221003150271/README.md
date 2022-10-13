# create openssl client certificates from leaked CA private key
ippsec video "LaCasaDePapel"
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

- 20221011092421

- 20221007220451

- 20221006214348

- 20221008215655

- 20221007220451

- 20221003150801

- 20221003150791

- 20221003150789


Tags:

    
