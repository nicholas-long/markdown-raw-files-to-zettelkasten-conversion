# block ciphers

## ECB electronic code book cipher mode of operation - vulnerable
- block cipher
- all blocks are encrypted separately
- same blocks yield same ciphertext
- very vulnerable
- crackable
- replayable
- can encrypt known string and xor to get cipher

## CBC cipher cipher block chaining cipher mode of operation
- block cipher
- For the encryption of the initial block, an IV is generated.  This IV should be an unpredictable, unique value that is openly transmitted to the recipient.  It is not a secret.
- This IV is XORed with the plaintext before passing it to the encryption algorithm.  The resulting ciphertext is then used to carry information to the encryption of the next block and so on.
- https://www.ubiqsecurity.com/ecb-vs-cbc-block-cipher-mode-differences/
- vulnerable
- crackable?
- brute forceable if used to generate a cookie

## AES DES blowfish ECB CBC CFB OFB CTR cipher modes
- modes of operation
  - ECB
  - CBC
  - CFB
  - OFB
  - CTR
- Notable block ciphers
  - Lucifer / DES
  - IDEA
  - RC5
  - Rijndael / AES
  - Blowfish
- the length of ciphertext encrypted with block mode is usually divisible by some power of 2
- <https://en.wikipedia.org/wiki/Block_cipher#Notable_block_ciphers>

` zet/20221003150265/README.md `

# Related

- [20221003150264](/zet/20221003150264/README.md) block ciphers AES DES blowfish
- [20221003150262](/zet/20221003150262/README.md) block ciphers CBC cipher cipher block chaining cipher mode of operation
- [20221003150261](/zet/20221003150261/README.md) block ciphers ECB electronic code book cipher mode of operation
- [20221014190105](/zet/20221014190105/README.md) kb file named kb/hacking/misc/buzzwords-and-acronyms.md
- ~/kb/hacking/misc/buzzwords-and-acronyms.md
- [20221024131549](/zet/20221024131549/README.md) buzzwords and acronyms hub
- <https://en.wikipedia.org/wiki/Block_cipher#Notable_block_ciphers>
- [20221003150459](/zet/20221003150459/README.md) openssl cipher commands encrypt text
- [20221003150791](/zet/20221003150791/README.md) openssl
- [20221003150799](/zet/20221003150799/README.md) openssl commands decrypt file
- [20221003150800](/zet/20221003150800/README.md) openssl commands encrypt file

Tags:

    #hacking #buzzwords #crypto #decrypt
