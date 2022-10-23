# HTTP LFI or dir traversal
- LFI or dir traversal
  - auth / config files for this & other installed services
  - php + LFI + filters -> iconv attack RCE with python script https://book.hacktricks.xyz/pentesting-web/file-inclusion/lfi2rce-via-php-filters
    - [20221003151225](/zet/20221003151225/README.md) php filter LFI to iconv RCE original get 0 script
  - ssh keys for usernames (linux and windows)
  - /usr/share/seclists/Discovery/Web-Content/LinuxFileList.txt
  - /usr/share/seclists/Fuzzing/LFI/LFI-gracefulsecurity-linux.txt
  - jhaddix
  - logs or writable files to poison for LFI
  - check for Remote File Inclusion (rare)
  - everything from "LFI procedure" [20221003151014](/zet/20221003151014/README.md) LFI or directory traversal procedures
  - list / enumerate running processes using proc pseudo files
  - check user input just like injections (could be passed as filenames or to commands)
  - sensitive files list
  - open directories as files - see if directory listing supported (rare?)

` zet/20221003151187/README.md `

# Related

- [20221003151014](/zet/20221003151014/README.md) LFI or directory traversal procedures
- [20221003151225](/zet/20221003151225/README.md) php filter LFI to iconv RCE original get 0 script
- [20221003151408](/zet/20221003151408/README.md) parse burpsuite saved request file and convert to python requests script for copying
- [20221014185619](/zet/20221014185619/README.md) kb file named kb/hacking/to-try-lists/HTTP.md
- [20221014081712](/zet/20221014081712/README.md) ways to get hacked
- [20221003150436](/zet/20221003150436/README.md) webshells for all sorts of languages
- [20221003151192](/zet/20221003151192/README.md) HTTP to try list
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221007220451](/zet/20221007220451/README.md) hacking notes hub
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:

    #to-try-list #hacking #http 
