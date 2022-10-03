## ssh `id_rsa` debug1 `send_pubkey_test` no mutual signature algorithm
## use old ssh-rsa RSA private key allow for connection
sha1 hashing used in `ssh-rsa` key type deprecated as of OpenSSH 8.8.
Add arguments
` -o 'PubkeyAcceptedKeyTypes +ssh-rsa' `

