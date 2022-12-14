# Using touch to make files with strange names for exploiting scripts
Passing a parameter in quotes does not actually change the parameter, so `touch '--help'` is the same as `touch --help`
```
┌──(kali㉿kali)-[~/test2]
└─$ touch --help
Usage: touch [OPTION]... FILE...
Update the access and modification times of each FILE to the current time.
... snip ...
Full documentation <https://www.gnu.org/software/coreutils/touch>
or available locally via: info '(coreutils) touch invocation'

┌──(kali㉿kali)-[~/test2]
└─$ touch './--help'

┌──(kali㉿kali)-[~/test2]
└─$ ls
--help
```
` touch -- --help `
` touch './--help' `
` zet/20221003151240/README.md `

# Related

- [20221014185539](/zet/20221014185539/README.md) kb file named kb/hacking/tricks/exploit-asterisk-with-touch.md
- [20221003151209](/zet/20221003151209/README.md) linux privilege escalation exploiting scripts on linux
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam

Tags:

    #trick #hacking #linux #privesc
