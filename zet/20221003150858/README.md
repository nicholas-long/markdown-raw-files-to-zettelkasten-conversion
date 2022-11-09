# SSH arguments use old ssh-rsa RSA private key allow for connection

- fixes ssh error `id_rsa` debug1 `send_pubkey_test` no mutual signature algorithm
- sha1 hashing used in `ssh-rsa` key type deprecated as of OpenSSH 8.8.
- Add arguments `-o 'PubkeyAcceptedKeyTypes +ssh-rsa'`

` zet/20221003150858/README.md `

# Related

- [20221020000848](/zet/20221020000848/README.md) SSH
- [20221014185829](/zet/20221014185829/README.md) kb file named kb/hacking/commands/ssh-commands.md
- [20221003150862](/zet/20221003150862/README.md) SSH arguments
- ~/kb/hacking/commands/ssh-commands.md
- [20221003150860](/zet/20221003150860/README.md) SSH arguments connect to old server
- [20221003151174](/zet/20221003151174/README.md) SSH to try list
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150859](/zet/20221003150859/README.md) SSH arguments ssh `id_rsa` debug1 `send_pubkey_test` no mutual signature algorithm

Tags:

    #command #hacking #ssh #fix
