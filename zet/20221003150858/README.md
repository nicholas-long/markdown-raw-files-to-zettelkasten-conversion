# SSH arguments use old ssh-rsa RSA private key allow for connection
sha1 hashing used in `ssh-rsa` key type deprecated as of OpenSSH 8.8.
Add arguments
` -o 'PubkeyAcceptedKeyTypes +ssh-rsa' `

` zet/20221003150858/README.md `

# Related

- [20221014185829](/zet/20221014185829/README.md) kb file named kb/hacking/commands/ssh-commands.md
- [20221003150862](/zet/20221003150862/README.md) SSH arguments
- ~/kb/hacking/commands/ssh-commands.md

Tags:

    #command #hacking #ssh 
