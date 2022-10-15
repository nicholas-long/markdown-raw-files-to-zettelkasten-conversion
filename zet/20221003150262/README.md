# block ciphers CBC cipher cipher block chaining cipher mode of operation
block cipher
For the encryption of the initial block, an IV is generated.  This IV should be an unpredictable, unique value that is openly transmitted to the recipient.  It is not a secret.
This IV is XORed with the plaintext before passing it to the encryption algorithm.  The resulting ciphertext is then used to carry information to the encryption of the next block and so on.
https://www.ubiqsecurity.com/ecb-vs-cbc-block-cipher-mode-differences/
vulnerable
crackable?
brute forceable if used to generate a cookie

` zet/20221003150262/README.md `

# Related

- [20221013185120](/zet/20221013185120/README.md) crypto and blockchain stuff
- [20221003150791](/zet/20221003150791/README.md) openssl
- [20221014190105](/zet/20221014190105/README.md) kb file named kb/hacking/misc/buzzwords-and-acronyms.md
- [20221003150265](/zet/20221003150265/README.md) block ciphers
- ~/kb/hacking/misc/buzzwords-and-acronyms.md

Tags:

    #hacking #buzzwords #buzzwords 
