# php code write to file
Use "a" for append
```php
<?php
$myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
$txt = "John Doe\n";
fwrite($myfile, $txt);
fclose($myfile);
?>
```

` zet/20221003150587/README.md `

# Related

- [20221009005402](/zet/20221009005402/README.md) preparing for the OSCP exam
- [20221003150590](/zet/20221003150590/README.md) php code
- [20221003150586](/zet/20221003150586/README.md) php code write to file easy file write
- ~/kb/hacking/php/PHP-quick-command-reference.md

Tags:

    #command #hacking #php 
