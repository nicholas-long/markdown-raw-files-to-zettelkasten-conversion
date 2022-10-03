# SSH arguments use old ssh-rsa RSA private key allow for connection
sha1 hashing used in `ssh-rsa` key type deprecated as of OpenSSH 8.8.
Add arguments
` -o 'PubkeyAcceptedKeyTypes +ssh-rsa' `

# References
- [20221003150862](/zet/20221003150862/) SSH arguments
- ~/kb/hacking/commands/ssh-commands.md

Tags:
    #assorted

