# establishing persistence on windows target in enterprise penetration test

- DLL sideloading common windows apps like OneDrive, Teams
These apps store executables in appdata and will load DLL payloads saved there.
Add wrapper functions to call real DLL.
This is currently very undetectable.
- hiding in docker containers
  - developer machines
- WSL?

` zet/20221003151083/README.md `

# Related

- [20221010142810](/zet/20221010142810/README.md) what is the right and secure way to develop with docker
- [20221009015558](/zet/20221009015558/README.md) docker
- [20221008194048](/zet/20221008194048/README.md) good DLLs to hide in for sideloading

Tags:

    #hacking #privesc #post #windows #ad
