# block ciphers
## AES DES blowfish
### ECB CBC CFB OFB CTR cipher modes
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
the length of ciphertext encrypted with block mode is usually divisible by some power of 2
https://en.wikipedia.org/wiki/Block_cipher#Notable_block_ciphers

## CBC cipher cipher block chaining cipher mode of operation
block cipher
For the encryption of the initial block, an IV is generated.  This IV should be an unpredictable, unique value that is openly transmitted to the recipient.  It is not a secret.
This IV is XORed with the plaintext before passing it to the encryption algorithm.  The resulting ciphertext is then used to carry information to the encryption of the next block and so on.
https://www.ubiqsecurity.com/ecb-vs-cbc-block-cipher-mode-differences/
vulnerable
crackable?
brute forceable if used to generate a cookie

## ECB electronic code book cipher mode of operation
block cipher
all blocks are encrypted separately
same blocks yield same ciphertext
very vulnerable
crackable
replayable
can encrypt known string and xor to get cipher

