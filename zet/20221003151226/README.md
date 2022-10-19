# php filter LFI to iconv RCE

- dope sauce - works on literally every PHP LFI box
- requirements
  - php filters are enabled
  - know a valid file name
    - even extensions appended by php script are OK - can use `...=index` and have it append `php`
- i extended it to have cookie params because it usually needs it when customizing the exploit to the target
- use original script
  - [20221003151225](/zet/20221003151225/README.md) php filter LFI to iconv RCE original get 0 script
  - i believe the other extended version from hacktricks has problems
    - difficult to come up with base64 of code with no special chars -> should use space invader?
- script uses `exec_passthru` using php backticks - this function could be disabled
  - find other payloads?
- process of prepending the text in reverse order is very esoteric and complex
  - finding valid base64 prepending iconv sequences is not as easy as it appears to be programatically

` zet/20221003151226/README.md `

# Related

- [20221003151225](/zet/20221003151225/README.md) php filter LFI to iconv RCE original get 0 script
- [20221003151192](/zet/20221003151192/README.md) HTTP TRY
- [20221013222124](/zet/20221013222124/README.md) concept hub for tricks and tips
- [20221014185550](/zet/20221014185550/README.md) kb file named kb/hacking/tricks/php-lfi2rce-filter-iconv-exploit.md
- [20221003150559](/zet/20221003150559/README.md) Kali Default PHP CMD Shell
- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003151224](/zet/20221003151224/README.md) php filter LFI to iconv RCE updated conversion table for all base64 (hacktricks)
- https://book.hacktricks.xyz/pentesting-web/file-inclusion/lfi2rce-via-php-filters
- https://gist.github.com/loknop/b27422d355ea1fd0d90d6dbc1e278d4d
- ~/kb/hacking/tricks/php-lfi2rce-filter-iconv-exploit.md

Tags:

    #hacking #trick #php 
