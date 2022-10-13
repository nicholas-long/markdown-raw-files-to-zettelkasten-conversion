# HTTP LFI or dir traversal
- LFI or dir traversal
  - auth / config files for this & other installed services
  - php + LFI + filters -> iconv attack RCE with python script https://book.hacktricks.xyz/pentesting-web/file-inclusion/lfi2rce-via-php-filters
  - ssh keys for usernames (linux and windows)
  - /usr/share/seclists/Discovery/Web-Content/LinuxFileList.txt
  - /usr/share/seclists/Fuzzing/LFI/LFI-gracefulsecurity-linux.txt
  - jhaddix
  - logs or writable files to poison for LFI
  - check for Remote File Inclusion (rare)
  - everything from "LFI procedure" [LFI or directory traversal procedures](../methodology/LFI-procedure.md#lfi-or-directory-traversal-procedures)
  - list / enumerate running processes using proc pseudo files
  - check user input just like injections (could be passed as filenames or to commands)
  - sensitive files list
  - open directories as files - see if directory listing supported (rare?)

` zet/20221003151187/README.md `

# Related

- [20221003150436](/zet/20221003150436/README.md) webshells for all sorts of languages
- [20221003151192](/zet/20221003151192/README.md) HTTP TRY
- [20221009102436](/zet/20221009102436/README.md) hacking to try lists
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221007220451](/zet/20221007220451/README.md) hacking notes node
- [20221003151193](/zet/20221003151193/README.md) HTTP
- ~/kb/hacking/to-try-lists/HTTP.md

Tags:

    #to-try-list #hacking #http 
